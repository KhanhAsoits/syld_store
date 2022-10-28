package com.syld.store.controller;

import com.syld.store.dto.OrderDto;
import com.syld.store.services.paypal.PaypalService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping(path = "/payment")
@PreAuthorize("isAuthenticated()")
public class PaymentController {
    private final PaypalService paypalService;

    @PostMapping(path = "/create")
    public String CreatePayment(@Valid @ModelAttribute("order") OrderDto orderDto, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "redirect:/err";
        }
        try {
        } catch (Exception e) {
            model.addAttribute("err_message", "Internal Server Errors");
        }
        return "redirect:/err";
    }
}
