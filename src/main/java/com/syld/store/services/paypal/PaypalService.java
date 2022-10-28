package com.syld.store.services.paypal;

import com.paypal.api.payments.*;
import com.paypal.base.rest.APIContext;
import com.syld.store.dto.OrderDetail;
import com.syld.store.ultis.UrlHelper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import java.awt.datatransfer.FlavorEvent;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class PaypalService {
    private final String CLIENT_ID = "AfK-8BuzKRrKo4IJ2I5Il1k3dE6dIW3Fgn0jPXcL0NoWNreqSq8hsjBAOxq-YQs_QSbJFQVJaFX0cFsN";
    private final String SECRET = "ELkGFAuh1hHWROYR1t6RflNpc0wtADyutwwKntHJbCN-eOPcnkB8f1k7cYYDJ74ns89MiGSDvf335h9-";

    private final String ReturnUrl = "/order/pay_success";
    private final String CancelUrl = "/order/cancel_pay";

    private final String MODE = "sandbox";

    public String authorizePayment(List<OrderDetail> orderDetail, HttpServletRequest request, String order_id) {
        try {
            Payer payer = this.getPayerInfo();
            RedirectUrls redirectUrls = this.getRedirectUrl(request, order_id);
            List<Transaction> transactions = this.getTransaction(orderDetail);
            Payment payment = new Payment();
            payment.setTransactions(transactions)
                    .setRedirectUrls(redirectUrls)
                    .setPayer(payer)
                    .setIntent("authorize");

            APIContext apiContext = new APIContext(this.CLIENT_ID, this.SECRET, this.MODE);
            Payment approvePayment = payment.create(apiContext);
            System.out.print(approvePayment);
            return getApproveLinks(approvePayment);
        } catch (Exception e) {
            log.info(e.getMessage());
            return null;
        }
    }

    private String getApproveLinks(Payment payment) {
        List<Links> links = payment.getLinks();
        String approval_link = null;
        for (Links links_ : links) {
            if (links_.getRel().equalsIgnoreCase("approval_url")) {
                approval_link = links_.getHref();
            }
        }
        return approval_link;
    }

    private List<Transaction> getTransaction(List<OrderDetail> orderDetails) {
        List<Transaction> transactions = new ArrayList<>();

        float tax = Float.parseFloat(orderDetails.get(0).getTax());
        float ship = Float.parseFloat(orderDetails.get(0).getShipping());
        Details details = new Details();
        details.setShipping(String.valueOf(ship));
        details.setTax(String.valueOf(tax));

        float sub_total = 0;
        for (OrderDetail orderDetail : orderDetails) {
            float each_subtotal = Float.parseFloat(orderDetail.getSubtotal()) * orderDetail.getQuantity();
            sub_total += each_subtotal;
        }
        float total = sub_total + tax + ship;
        // total = ship + tax + subtotal
        // subtotal = sale price * quantity
//
        details.setSubtotal(String.valueOf(sub_total));

        Amount amount = new Amount();
        amount.setCurrency("USD");
        amount.setTotal(String.valueOf(total));
        amount.setDetails(details);
        Transaction transaction = new Transaction();

        transaction.setAmount(amount);
        transaction.setDescription(String.format("Order_%s", UUID.randomUUID().toString()));
        ItemList itemList = new ItemList();
        List<Item> items = new ArrayList<>();
        for (OrderDetail orderDetail : orderDetails) {
            Item item = new Item();
            item.setName(orderDetail.getOrder_name());
            item.setCurrency("USD");
            item.setPrice(orderDetail.getSubtotal());
            item.setTax(orderDetail.getTax());
            item.setQuantity(String.valueOf(orderDetail.getQuantity()));
            items.add(item);
        }
        itemList.setItems(items);
        transaction.setItemList(itemList);
        transactions.add(transaction);
        return transactions;
    }

    public RedirectUrls getRedirectUrl(HttpServletRequest request, String id) {

        String cancelUrl = UrlHelper.getBaseURL(request) + this.CancelUrl + String.format("/%s", id);

        String success = UrlHelper.getBaseURL(request) + this.ReturnUrl + String.format("/%s", id);

        RedirectUrls urls = new RedirectUrls();
        urls.setCancelUrl(cancelUrl);
        urls.setReturnUrl(success);
        return urls;
    }

    public Payer getPayerInfo() {

        Payer payer = new Payer();
        payer.setPaymentMethod("paypal");
        PayerInfo payerInfo = new PayerInfo();
        payerInfo.setFirstName("khanh")
                .setLastName("axios")
                .setEmail("dangkhanh.dev@gmail.com");
        payer.setPayerInfo(payerInfo);
        return payer;
    }

}
