package com.syld.store.controller.admin;

import com.syld.store.controller.BaseController;
import com.syld.store.dto.UserClientDto;
import com.syld.store.entities.User;
import com.syld.store.services.role.RoleService;
import com.syld.store.services.user.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping(path = "/admin/users")
@RequiredArgsConstructor
@Slf4j
public class UserController extends BaseController {
    private final UserService userService;
    private final RoleService roleService;

    @GetMapping
    public String getAll(Model model){
        try {
            model.addAttribute("list", userService.getAll());
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "List User", "user/list", this.admin_layout);
    }


    @GetMapping(path = "/update/{id}")
    public String Update(Model model, @PathVariable String id) {
        model.addAttribute("roles", roleService.getRoles());
        model.addAttribute("user", userService.findById(id));
        return view(model, "Edit - User", "user/edit", this.admin_layout);
    }

    @PostMapping(path = "/update")
    public String Update(@Valid @ModelAttribute("user") UserClientDto userClientDto, BindingResult bindingResult, Model model) {
        UserClientDto hasEmail = userService.findByEmailNotSame(userClientDto.getEmail(), userClientDto.getId());
        if (hasEmail != null) {
            bindingResult.rejectValue("email", "", "Email has taken!");
        }
        UserClientDto hasPhone = userService.findByPhoneNotSame(userClientDto.getPhoneNumber(), userClientDto.getId());
        if (hasPhone != null) {
            bindingResult.rejectValue("phoneNumber", "", "Phone has taken!");
        }

        if (bindingResult.hasErrors()) {
            model.addAttribute("roles", roleService.getRoles());
            return view(model, "Create - User", "user/add", this.admin_layout);
        }
        try {
            userService.update(userClientDto);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/admin/users";
    }

    @GetMapping(path = "/create")
    public String Save(Model model) {
        model.addAttribute("roles", roleService.getRoles());
        model.addAttribute("user", new UserClientDto());
        return view(model, "Create - User", "user/add", this.admin_layout);
    }

    @PostMapping(path = "/create")
    public String Save(@Valid @ModelAttribute("user") UserClientDto userClientDto, BindingResult bindingResult, Model model) {

        UserClientDto hasEmail = userService.findByEmail(userClientDto.getEmail());
        if (hasEmail != null) {
            bindingResult.rejectValue("email", "", "Email has taken!");
        }
        UserClientDto hasPhone = userService.findByNumberPhone(userClientDto.getPhoneNumber());
        if (hasPhone != null) {
            bindingResult.rejectValue("phoneNumber", "", "Phone has taken!");
        }
        if (bindingResult.hasErrors()) {
            model.addAttribute("roles", roleService.getRoles());

            return view(model, "Create - User", "user/add", this.admin_layout);
        }
        try {
            userService.save(userClientDto);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/admin/users";
    }


    @GetMapping(path = "/gird/all")
    public String UserGird(Model model) {
        try {
            model.addAttribute("list", userService.findAll());
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "List User", "users/gird", this.admin_layout);
    }

    public ResponseEntity<?> remove(String Id) {
        return null;
    }
}
