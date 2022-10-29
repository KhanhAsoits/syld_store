package com.syld.store.controller;

import com.syld.store.dto.ChangePasswordDto;
import com.syld.store.dto.ClientUserDto;
import com.syld.store.dto.UserClientDto;
import com.syld.store.services.role.RoleService;
import com.syld.store.services.user.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.print.attribute.standard.PresentationDirection;
import javax.validation.Valid;
import java.util.Objects;

@Controller
@Slf4j
@RequestMapping(path = "/my_account")
@RequiredArgsConstructor
//@PreAuthorize("isAuthenticated()")
public class MyAccountClient extends BaseController {

    private final UserService userService;

    private final RoleService roleService;

    private final String layout_path = "layout/client_layout";

    @GetMapping(path = "/detail")
    public String Detail(Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String email = authentication.getName();
        model.addAttribute("my_account", new ClientUserDto());
        model.addAttribute("password_changer", new ChangePasswordDto());
        model.addAttribute("roles", roleService.getRoles());
        model.addAttribute("user", userService.findByEmail(email));
        return view(model, "My Account", "my_account", this.layout_path, true);
    }


    @PostMapping(path = "/change_password")
    public String ChangePassword(@Valid @ModelAttribute("password_changer") ChangePasswordDto changePasswordDto, BindingResult bindingResult, Model model) {
        if (Objects.equals(changePasswordDto.getNew_pass(), changePasswordDto.getOld_pass())) {
            bindingResult.rejectValue("new_pass", "", "New Pass Can't Same Old Pass");
        }
        model.addAttribute("my_account", new ClientUserDto());
        model.addAttribute("roles", roleService.getRoles());
        model.addAttribute("user", userService.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName()));
        if (bindingResult.hasErrors()) {

            return view(model, "My Account", "my_account", this.layout_path, true);
        }

        try {
            boolean result = userService.changePassword(SecurityContextHolder.getContext().getAuthentication().getName(), changePasswordDto);
            if (result) {
                return "redirect:/logout";
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/my_account";
    }

    @PostMapping("/update")
    public String Update(@Valid @ModelAttribute("my_account") ClientUserDto userClientDto, BindingResult bindingResult, Model model) {
        try {
//            check unique

            UserClientDto checkEmail = userService.findByEmailNotSame(userClientDto.getId(), userClientDto.getEmail());
            if (checkEmail != null) {
                bindingResult.rejectValue("email", "", "Email has taken!");
            }
            UserClientDto checkPhone = userService.findByPhoneNotSame(userClientDto.getId(), userClientDto.getPhone_number());
            if (checkPhone != null) {
                bindingResult.rejectValue("phoneNumber", "", "Phone has taken!");
            }
            model.addAttribute("password_changer", new ChangePasswordDto());
            model.addAttribute("roles", roleService.getRoles());
            model.addAttribute("user", userService.findByEmail(SecurityContextHolder.getContext().getAuthentication().getName()));
            if (bindingResult.hasErrors()) {
                return view(model, "My account", "my_account", this.layout_path, true);
            }
            userService.client_update(userClientDto);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/my_account/detail";
    }


}
