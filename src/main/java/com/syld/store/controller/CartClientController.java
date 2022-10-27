package com.syld.store.controller;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping(path = "/cart/client")
@RequiredArgsConstructor
public class CartClientController extends BaseController {

    @PreAuthorize("hasAnyAuthority('role_user')")
    @GetMapping(path = "/detail")
    public String Detail(Model model) {
        return this.view(model, "Cart - Detail", "cart_detail", this.layout_path, true);
    }

}
