package com.syld.store.controller;

import com.syld.store.dto.OrderDto;
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

    @PostMapping(path = "/create")
    public String CreatePayment(@Valid @ModelAttribute("order")OrderDto orderDto , BindingResult bindingResult, Model model){
        if (bindingResult.hasErrors()){
            return "redirect:/err";
        }
        return null;
    }
}
