package com.syld.store.controller;

import com.syld.store.dto.CartClientView;
import com.syld.store.dto.ListProductCartDto;
import com.syld.store.services.Cart.CartService;
import com.syld.store.services.Cart.CartServiceIpm;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@Slf4j
@RequestMapping(path = "/cart/client")
@RequiredArgsConstructor
//@PreAuthorize("isAuthenticated()")
public class CartClientController extends BaseController {
    private final CartServiceIpm cartService;

    @GetMapping(path = "/detail")
    public String Detail(Model model) {
        model.addAttribute("cart_update", new ListProductCartDto());
        return this.view(model, "Cart - Detail", "cart_detail", this.layout_path, true);
    }

    @PostMapping("/update")
    public String Update(@ModelAttribute("cart_update") ListProductCartDto cartClientView, BindingResult bindingResult, Model model) {
        try {
            if (bindingResult.hasErrors()) {
                return view(model, "Cart Detail", "cart_detail", this.layout_path, true);
            }
            cartService.update_(cartClientView);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/cart/client/detail";
    }

}
