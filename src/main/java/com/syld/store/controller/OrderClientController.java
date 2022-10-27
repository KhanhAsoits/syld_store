package com.syld.store.controller;

import com.syld.store.dto.CartClientView;
import com.syld.store.dto.OrderDto;
import com.syld.store.services.Cart.CartService;
import com.syld.store.services.order.OrderService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.PublicKey;
import java.util.Base64;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping(path = "/order")
public class OrderClientController extends BaseController {

    private final CartService cartService;
    private final OrderService orderService;

    @PreAuthorize("isAuthenticated()")
    @GetMapping(path = "/{user_email}")
    public String OrderDetail(Model model, @PathVariable String user_email) {
        try {
            byte[] decode = Base64.getDecoder().decode(user_email);
            String raw_email = new String(decode);
            CartClientView cartClientView = cartService.getByUser(raw_email);
            model.addAttribute("order", new OrderDto());
            model.addAttribute("cart", cartClientView);
            return view(model, "Order Detail", "checkout", this.layout_path, true);
        } catch (Exception e) {
            log.info(e.getMessage());
            return "redirect:/home";
        }
    }
}
