package com.syld.store.controller.admin;

import com.syld.store.dto.CardDto;
import com.syld.store.services.card.CardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import java.util.Base64;

@RestController
@RequestMapping("/api/card")
@Slf4j
@RequiredArgsConstructor
public class CardApiController {
    private final CardService cardService;

//    @PreAuthorize("isAuthenticated()")
    @PostMapping(path = "/create")
    public String Save(@Valid @RequestBody CardDto cardDto, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return String.format("redirect:/order/%s", Base64.getEncoder().encodeToString(cardDto.getUser_email().getBytes()));
        }
        try {
            cardService.save_custom(cardDto);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return String.format("redirect:/order/%s", Base64.getEncoder().encodeToString(cardDto.getUser_email().getBytes()));
    }
}
