package com.syld.store.controller.admin;

import com.syld.store.controller.BaseController;
import com.syld.store.dto.CardDto;
import com.syld.store.services.card.CardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Base64;

@Controller
@RequestMapping(path = "/admin/cards")
@Slf4j
@RequiredArgsConstructor
public class CardController extends BaseController {

    private final CardService cardService;

    @PostMapping(path = "/create")
    public String Save(@Valid @ModelAttribute("card") CardDto cardDto, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return String.format("redirect:/order/%s", Base64.getEncoder().encodeToString(cardDto.getUser_email().getBytes()));
        }
        try {
            cardService.save(cardDto);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return String.format("redirect:/order/%s", Base64.getEncoder().encodeToString(cardDto.getUser_email().getBytes()));
    }

    @GetMapping
    public String GetAll(Model model) {
        try {
            model.addAttribute("cards", cardService.getAll());
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "List Card", "card/list", this.admin_layout);
    }

    @GetMapping(path = "/update/{id}")
    public String Update(Model model, @PathVariable("card_edit") CardDto cardDto, BindingResult bindingResult) {

        CardDto cardDto_ = cardService.getById(cardDto.getId());
        if (cardDto_ != null) {
            bindingResult.rejectValue("card_brand", "", "Card brand has token !");
        }
        if (bindingResult.hasErrors()) {
            return view(model, "Edit - card", "card/edit", this.admin_layout);
        }
        try {
            cardService.update(cardDto);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return "rediret: /admin/cards";
    }

    @GetMapping(path = "remove/{is}")
    public String Remove(RedirectAttributes redirectAttributes, @PathVariable String id) {
        try {
            cardService.remove(id);
            redirectAttributes.addFlashAttribute("message", "Success");
        } catch (Exception e) {

            redirectAttributes.addAttribute("message", "Faleid");

        }
        return "redircect : /admin/cards";
    }
}
