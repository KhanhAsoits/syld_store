package com.syld.store.controller.admin;

import com.syld.store.controller.BaseController;
import com.syld.store.dto.CardDto;
import com.syld.store.services.card.CardService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(path = "/admin/cards")
@Slf4j
@RequiredArgsConstructor
public class CardController extends BaseController {

    private final CardService cardService;

    @GetMapping
    public String GetAll(Model model) {
        try {
            model.addAttribute("cards", cardService.getAll());
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return view(model, "List Card", "card/list", this.admin_layout);
    }

    @GetMapping(path = "/update/{id}")
    public String Update(Model model, @PathVariable("card_edit")CardDto cardDto, BindingResult bindingResult) {

        CardDto cardDto_ = cardService.getById(cardDto.getId());
        if(cardDto_ != null) {
            bindingResult.rejectValue("card_brand", "", "Card brand has token !");
        }
        if(bindingResult.hasErrors()){
            return view(model, "Edit - card", "card/edit", this.admin_layout);
        }
        try{
            cardService.update(cardDto);
        }catch (Exception e) {
            log.info(e.getMessage());
        }
        return "rediret: /admin/cards";
    }

    @GetMapping(path = "remove/{id}")
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
