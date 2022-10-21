package com.syld.store.controller.admin;

import com.syld.store.controller.BaseController;
import com.syld.store.dto.UserClientDto;
import com.syld.store.entities.User;
import com.syld.store.services.user.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping(path = "/admin/users")
@RequiredArgsConstructor
@Slf4j
public class UserController extends BaseController {
    private final UserService userService;

    @GetMapping(path = "/create")
    public String Save(Model model) {
        model.addAttribute("user", new UserClientDto());
        return view(model, "Create - User", "user/add", this.admin_layout);
    }

    @PostMapping(path = "/create")
    public String Save(@Valid @ModelAttribute("user") UserClientDto userClientDto, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return view(model, "Create - User", "user/add", this.admin_layout);
        }
        try {
            userService.save(userClientDto);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/admin/users";
    }
}
