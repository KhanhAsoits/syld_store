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
    public String Index(Model model, @RequestParam(required = false) String category,@RequestParam(required = false) String tag,@RequestParam int page , @RequestParam int limit){
        page = page >= 1 ? page : 1;
        limit = limit >= 1 ? limit : 1;
        ShopViewDto shopViewDto = new ShopViewDto();
        if (category != null && !Objects.equals(category,"")){
             shopViewDto = shopService.GetDataByCategory(category,page,limit);
            if (shopViewDto.getProductViewDtoList().getContent().size() > 0){
                model.addAttribute("category",shopViewDto.getProductViewDtoList().getContent().get(0).getCategory());
            }
//            get by category
        }else if(tag != null && !Objects.equals(tag,"")){
            shopViewDto = shopService.GetDataByTag(tag,page,limit);
        }
        else  {
//            get all
            shopViewDto = shopService.GetData(page,limit);
        }
        model.addAttribute("pages",shopViewDto.getProductViewDtoList().getTotalPages());
        model.addAttribute("data",shopViewDto);
        model.addAttribute("current_page",page);
        model.addAttribute("limit",limit);
        return view(model,"Shop","shop",this.layout_path,true);
    }

}
