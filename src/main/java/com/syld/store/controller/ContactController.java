package com.syld.store.controller;


import com.syld.store.services.client.ContactService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Slf4j
@RequestMapping(path = "/contact")
@RequiredArgsConstructor
public class ContactController extends BaseController {

    private final ContactService contactService;

    private final String layout_path = "layout/client_layout";

    @GetMapping
    public String Contact(Model model) {
        try {
            model.addAttribute("contact", contactService.getData());
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "Contact", "contact", this.layout_path );
    }
}
