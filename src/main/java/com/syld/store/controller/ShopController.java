package com.syld.store.controller;

import com.syld.store.dto.ShopViewDto;
import com.syld.store.services.client.ShopService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.constraints.Min;
import javax.websocket.server.PathParam;
import java.util.Objects;

@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping(path = "/store")
public class ShopController extends BaseController{
    private final String layout_path = "layout/client_layout";

    private final ShopService shopService;

    @GetMapping
    public String Index(Model model, @RequestParam(required = false) String category_slug,@RequestParam int page , @RequestParam int limit){
        if (category_slug != null && !Objects.equals(category_slug,"")){
//            get by category
        }else {
            page = page >= 1 ? page : 1;
            limit = limit >= 1 ? limit : 1;
//            get all
            ShopViewDto shopViewDto = shopService.GetData(page,limit);
            model.addAttribute("pages",shopViewDto.getProductViewDtoList().getTotalPages());
            model.addAttribute("current_page",page);
            model.addAttribute("limit",limit);
            model.addAttribute("data",shopViewDto);
        }
        return view(model,"Shop","shop",this.layout_path,true);
    }

}
