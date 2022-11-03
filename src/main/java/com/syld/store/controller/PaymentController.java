package com.syld.store.controller;

import com.syld.store.dto.CartClientView;
import com.syld.store.dto.OrderDetail;
import com.syld.store.dto.OrderDto;
import com.syld.store.entities.OrderEntity;
import com.syld.store.entities.ProductCart;
import com.syld.store.services.Cart.CartService;
import com.syld.store.services.card.CardService;
import com.syld.store.services.card.CardServiceIpm;
import com.syld.store.services.order.OrderService;
import com.syld.store.services.order.OrderServiceIpm;
import com.syld.store.services.paypal.PaypalService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.jasper.tagplugins.jstl.core.If;
import org.hibernate.criterion.Order;
import org.hibernate.procedure.spi.ParameterRegistrationImplementor;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.net.http.HttpResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping(path = "/payment")
//@PreAuthorize("isAuthenticated()")
public class PaymentController {
    private final PaypalService paypalService;
    private final CartService cartService;

    private final OrderServiceIpm orderService;

    @PostMapping(path = "/create")
    public String CreatePayment(@Valid @ModelAttribute("order") OrderDto orderDto, BindingResult bindingResult, Model model, HttpServletRequest request) {
        if (bindingResult.hasErrors()) {
            return "redirect:/err";
        }

        try {
            String id = null;
            String result_url = null;
            if (orderDto.getId() == null) {
                OrderEntity orderEntity = orderService.findUnpaidOrder();
                if (orderEntity != null) {
                    model.addAttribute("message", "Has An Order Unpaid!");
                    return "redirect:/order/my_orders?page=1&limit=8";
                }
                id = orderService.save_(orderDto);
                if (id != null) {
                    result_url = paypalService.authorizePayment(this.ProcessOrderDetailForTransactionWithCart(orderDto.getCart_id(), orderDto.getShip_mode()), request, id);
                }
            } else {
                result_url = paypalService.authorizePayment(this.ProcessOrderDetailForTransactionWithOrder(orderDto.getId(), orderDto.getShip_mode()), request, orderDto.getId());
            }


            return String.format("redirect:%s", result_url);
        } catch (Exception e) {
            model.addAttribute("err_message", "Internal Server Errors");
        }
        return "redirect:/err";
    }

    private List<OrderDetail> ProcessOrderDetailForTransactionWithOrder(String order_id, String shipping) {
        List<OrderDetail> orderDetails = new ArrayList<>();
        try {
            OrderDto orderEntity = orderService.getById(order_id);
            CartClientView cartClientView = new CartClientView();
            if (orderEntity != null) {
                for (ProductCart productCart : orderEntity.getProductCart()) {
                    ProcessOrderDetail(shipping, cartClientView, orderDetails, productCart);
                }
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return orderDetails;
    }

    private void ProcessOrderDetail(String shipping, CartClientView cartClientView, List<OrderDetail> orderDetails, ProductCart productCart) {
        OrderDetail orderDetail = new OrderDetail();
        orderDetail.setOrder_name(productCart.getProduct().getProduct_name());
        orderDetail.setProduct_name(productCart.getProduct().getProduct_name());
        orderDetail.setTax("1");
        orderDetail.setShipping(shipping);
        float sale_of_price = cartClientView.getSalePrice(productCart.getProduct());
        orderDetail.setTotal(String.valueOf(sale_of_price * productCart.getQuantity()));
        orderDetail.setSubtotal(String.valueOf(sale_of_price));
        orderDetails.add(orderDetail);
        orderDetail.setQuantity(productCart.getQuantity());
    }

    private List<OrderDetail> ProcessOrderDetailForTransactionWithCart(String cart_id, String shipping) {

        List<OrderDetail> orderDetails = new ArrayList<>();
        try {

            CartClientView cartClientView = cartService.getById(cart_id);
            if (cartClientView != null) {
                for (ProductCart productCart : cartClientView.getProductCarts()) {
                    ProcessOrderDetail(shipping, cartClientView, orderDetails, productCart);
                }
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return orderDetails;
    }
}
