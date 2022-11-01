package com.syld.store.controller.admin;

import com.syld.store.controller.BaseController;
import com.syld.store.dto.OrderDto;
import com.syld.store.services.order.OrderService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@Slf4j@RequiredArgsConstructor
@RequestMapping(path = "/admin/orders")
public class OrderController extends BaseController {

    private final OrderService orderService;

    @GetMapping
    public String GetByPage(Model model) {
        try{
            model.addAttribute("orders", orderService.getAll());
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "List order", "order/list", this.admin_layout);
    }

    @GetMapping(path = "/update/{id}")
    public String Update(Model model, @PathVariable String id) {
        try {
            model.addAttribute("order_edit", orderService.getById(id));
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "Edit - order", "order/edit", this.admin_layout);
    }

    @PostMapping(path = "/update")
    public String Update(@Valid @ModelAttribute("order_edit") OrderDto orderDto, BindingResult bindingResult, Model model) {
        OrderDto orderDto_ = orderService.getByNameNotSame(orderDto.getOrder_name(), orderDto.getId());
        if(orderDto_ != null) {
            bindingResult.rejectValue("order_name", "", "order name has taken !");
        }
        if(bindingResult.hasErrors()) {
            return view(model, "Edit - Order", "order/edit", this.admin_layout);
        }
        try {
            orderService.update(orderDto);
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/admin/orders";
    }
}
