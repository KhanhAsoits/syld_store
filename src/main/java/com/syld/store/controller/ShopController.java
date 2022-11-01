package com.syld.store.controller;

import com.syld.store.dto.ProductViewDto;
import com.syld.store.dto.ShopViewDto;
import com.syld.store.entities.Product;
import com.syld.store.entities.Tag;
import com.syld.store.services.client.ShopService;
import com.syld.store.services.product.ProductServiceIpm;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
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
public class ShopController extends BaseController {
    private final String layout_path = "layout/client_layout";

    private final ShopService shopService;

    private final ProductServiceIpm productServiceIpm;

    @GetMapping
    public String Index(Model model, @RequestParam(required = false) String price, @RequestParam(required = false) String category, @RequestParam(required = false) String keyword, @RequestParam(required = false) String tag, @RequestParam(required = false, defaultValue = "1") int page, @RequestParam(required = false, defaultValue = "8") int limit) {
            page = Integer.parseInt(String.valueOf(page)) >= 1 ? Integer.parseInt(String.valueOf(page)) : 1;
        limit = Integer.parseInt(String.valueOf(limit)) >= 1 ? Integer.parseInt(String.valueOf(limit)) : 1;
        ShopViewDto shopViewDto = new ShopViewDto();
        if (category != null && !Objects.equals(category, "")) {
            shopViewDto = shopService.GetDataByCategory(category, page, limit);
            if (shopViewDto.getProductViewDtoList().getContent().size() > 0) {
                model.addAttribute("category", shopViewDto.getProductViewDtoList().getContent().get(0).getCategory());
            }
//            get by category
        } else if (tag != null && !Objects.equals(tag, "")) {
            shopViewDto = shopService.GetDataByTag(tag, page, limit);
            if (shopViewDto.getProductViewDtoList().getContent().size() > 0) {
                Tag current_tag = shopService.GetTagByName(tag);
                model.addAttribute("tag", current_tag);
            }
        } else if (keyword != null && !Objects.equals(keyword, "")) {
            Page<ProductViewDto> productViewDtos = productServiceIpm.search(keyword, page, limit);
            shopService.GetCategoryAndTag(shopViewDto);
            if (productViewDtos.getContent().size() > 0) {
                shopViewDto.setProductViewDtoList(productViewDtos);
                model.addAttribute("keyword", keyword);
            }
        } else if (price != null && !Objects.equals(keyword, "")) {
            Page<ProductViewDto> productViewDtos = productServiceIpm.search(keyword, page, limit);
            shopViewDto.setProductViewDtoList(productViewDtos);
            shopService.GetCategoryAndTag(shopViewDto);
            model.addAttribute("keyword", keyword);
        } else {
//            get all
            shopViewDto = shopService.GetData(page, limit);
        }
        log.info(String.valueOf(shopViewDto.getProductViewDtoList().getTotalPages()));
        model.addAttribute("pages", shopViewDto.getProductViewDtoList().getTotalPages());
        model.addAttribute("data", shopViewDto);
        model.addAttribute("current_page", page);
        model.addAttribute("limit", limit);
        return view(model, "Shop", "shop", this.layout_path, true);
    }
}
