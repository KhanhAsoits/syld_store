package com.syld.store.controller;

import com.syld.store.dto.UserClientDto;
import com.syld.store.services.role.RoleService;
import com.syld.store.services.user.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@Slf4j
@RequestMapping(path = "/my_account")
@RequiredArgsConstructor
public class MyAccountClient extends BaseController {

    private final UserService userService;

    private final RoleService roleService;

    private final String layout_path = "layout/client_layout";


    @GetMapping(path = "/update/{id}")
    public String Update(Model model, @PathVariable String id) {
        model.addAttribute("roles", roleService.getRoles());
        model.addAttribute("users", userService.findById(id));
        return view(model, "My Account", "my_account", this.layout_path, true);
    }

    @PostMapping("/update")
    public String Update(@Valid @ModelAttribute("my_account")UserClientDto userClientDto, BindingResult bindingResult, Model model) {
        try{
            userService.update(userClientDto);
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/my_account";
    }


}
