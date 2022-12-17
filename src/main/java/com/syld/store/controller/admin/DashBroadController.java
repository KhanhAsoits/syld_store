package com.syld.store.controller.admin;

import com.syld.store.controller.BaseController;
import com.syld.store.services.dashbroad.DashbroadService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping(path = "/admin/dashbroads")
public class DashBroadController extends BaseController {

    private final DashbroadService dashbroadService;

    @GetMapping
    public String Page(Model model) {
        try {
            model.addAttribute("dashbroads", dashbroadService.getAll());
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "Dashbroad", "dashbroad", this.admin_layout);

    }
}
