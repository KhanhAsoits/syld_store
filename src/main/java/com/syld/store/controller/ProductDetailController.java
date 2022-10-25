package com.syld.store.controller;

import com.syld.store.controller.BaseController;
import com.syld.store.dto.CategoryDto;
import com.syld.store.dto.ProductViewDto;
import com.syld.store.services.client.ProductDetailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Objects;

@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping(path = "/products")
public class ProductDetailController extends BaseController {

    private final ProductDetailService productDetailService;
    private final String layout_path = "layout/client_layout";


    public List<ProductViewDto> RelatedProduct(CategoryDto categoryDto,int limit) {
        try {
            return productDetailService.getRelated(categoryDto,limit);
        }catch (Exception e){
            log.info(e.getMessage());
            return null;
        }
    }

    @GetMapping(path = "/{slug}")
    public String ProductBySlug(Model model, @PathVariable String slug, @RequestParam(required = false,defaultValue = "1") int related_limit) {
        try {
            if (!Objects.equals(slug, "")) {
                related_limit = related_limit < 6 ? 6 : related_limit;
                ProductViewDto productViewDto = productDetailService.getBySlug(slug);
                Assert.notNull(productViewDto, "Can't nt null");
                productViewDto.convertData();
                model.addAttribute("single_product", productViewDto);
                model.addAttribute("category_and_tag",productDetailService.getCategoryAndTag());
                model.addAttribute("related_product", this.RelatedProduct(new ModelMapper().map(productViewDto.getCategory(), CategoryDto.class),related_limit));
                return view(model,String.format("SYLD - SHOP - %s",productViewDto.getProduct_name()),"ProductDetail",this.layout_path,true);
            }
        }catch (Exception e){
            log.info(e.getMessage());
        }
        return "redirect:/home";

    }

}
