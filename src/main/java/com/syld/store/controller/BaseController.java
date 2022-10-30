package com.syld.store.controller;

import com.syld.store.entities.User;
import com.syld.store.services.client.NavbarService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.ui.Model;

import java.util.Base64;
import java.util.Objects;

public class BaseController {

    @Autowired
    NavbarService navbarService;
    public String admin_layout = "/admin/layout/admin_layout";

    public String prefix = "index";

    public String layout_path = "/layout/client_layout";

    public String view(Model model, String title, String prefix, String layout_path) {
        if (prefix != null && layout_path != null) {
            model.addAttribute("web_content", prefix);
            this.layout_path = layout_path;
        } else {
            model.addAttribute("web_content", this.prefix);
        }
        model.addAttribute("title", title);
        return layout_path;
    }

    public String view(Model model, String title, String prefix, String layout_path, Boolean is_nav) {
        if (prefix != null && layout_path != null) {
            model.addAttribute("web_content", prefix);
            this.layout_path = layout_path;
        } else {
            model.addAttribute("web_content", this.prefix);
        }

        if (is_nav) {
            model.addAttribute("navs", navbarService.getAllCategory());
        }
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (!Objects.equals(authentication.getName(), "anonymousUser")) {
            model.addAttribute("email", authentication.getName());
            model.addAttribute("cart", navbarService.getUserCart(authentication.getName()));
        }
        model.addAttribute("title", title);
        return layout_path;
    }

    public String isLogin() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        if (authentication.isAuthenticated()) {
            if (!Objects.equals(authentication.getName(), "anonymousUser")) {
                return "redirect:/home";
            }
        }
        return null;
    }

    public String getAuthErr(String code) {
        if (Objects.equals(code, "error.authen.default")) {
            return "";
        } else if (Objects.equals(code, "error.authen.wrong.password")) {
            return "Email Or Password Incorrect!";
        } else {
            return code;
        }
    }
}
