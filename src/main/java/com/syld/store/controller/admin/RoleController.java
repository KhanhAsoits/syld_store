package com.syld.store.controller.admin;

import com.syld.store.controller.BaseController;
import com.syld.store.dto.RoleDto;
import com.syld.store.entities.Role;
import com.syld.store.services.role.RoleService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.support.PageableExecutionUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.sql.Struct;
import java.util.List;

@Controller
@RequestMapping(path = "/admin/roles")
@RequiredArgsConstructor
@Slf4j
public class RoleController extends BaseController {
    private final RoleService roleService;

    @GetMapping
    public String Index(Model model) {
        try {
            model.addAttribute("list", roleService.getRoles());
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "List - Role", "role/list", this.admin_layout);
    }

    @GetMapping(path = "/create")
    public String Save(Model model) {
        model.addAttribute("role", new RoleDto());

        return view(model, "Create - Role", "role/add", this.admin_layout);
    }

    @PostMapping(path = "/create")
    public String Save(@Valid @ModelAttribute("role") RoleDto roleDto, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return view(model,"Create - Role","role/add",this.admin_layout);
        }
        try {
            roleService.save(roleDto);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "redirect:/admin/roles";
    }

}
