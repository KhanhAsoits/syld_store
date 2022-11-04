package com.syld.store.controller;

import com.syld.store.dto.CardDto;
import com.syld.store.dto.CartClientView;
import com.syld.store.dto.OrderDetail;
import com.syld.store.dto.OrderDto;
import com.syld.store.entities.OrderEntity;
import com.syld.store.services.Cart.CartService;
import com.syld.store.services.order.OrderService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Base64;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping(path = "/order")
@PreAuthorize("isAuthenticated()")
public class OrderClientController extends BaseController {

    private final CartService cartService;
    private final OrderService orderService;

    @GetMapping(path = "/pay_success/{order_id}")
    public String OrderCreate(@PathVariable String order_id) {
        try {
            orderService.pay_success(order_id);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/home";
    }

    @GetMapping(path = "/cancel_pay/{order_id}")
    public String CancelOrder(@PathVariable String order_id, @RequestParam String token) {
        try {
            orderService.cancel_pay(order_id);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/home";
    }

    //    @PreAuthorize("isAuthenticated()")
    @GetMapping(path = "/{user_email}")
    public String OrderDetail(Model model, @PathVariable String user_email) {
        try {
            byte[] decode = Base64.getDecoder().decode(user_email);
            String raw_email = new String(decode);
            CartClientView cartClientView = cartService.getByUser(raw_email);
            model.addAttribute("order", new OrderDto());
            model.addAttribute("card", new CardDto());
            model.addAttribute("cart", cartClientView);
            return view(model, "Order Detail", "checkout", this.layout_path, true);
        } catch (Exception e) {
            log.info(e.getMessage());
            return "redirect:/home";
        }
    }

    @GetMapping(path = "/paid/{order_id}")
    public String OrderDetailById(Model model, @PathVariable String order_id) {
        try {
            OrderDto orderEntity = orderService.getById(order_id);
            model.addAttribute("order", new OrderDto());
            model.addAttribute("card", new CardDto());
            model.addAttribute("order_detail", orderEntity);
            return view(model, "Order Detail", "checkout_order", this.layout_path, true);
        } catch (Exception e) {
            log.info(e.getMessage());
            return "redirect:/home";
        }
    }

    @GetMapping(path = "/my_orders")
    public String OrderHistory(Model model, @RequestParam int page, @RequestParam int limit) {
        try {
            Page<OrderDto> orderDtos = new PageImpl<>(new ArrayList<OrderDto>());
            orderDtos = orderService.getAll(SecurityContextHolder.getContext().getAuthentication().getName(), page, limit);
            model.addAttribute("orders", orderDtos);
            return view(model, "SYLD - My Orders", "orders", this.layout_path, true);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/home";
    }
}
