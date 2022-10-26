package com.syld.store.services.client;

import com.syld.store.dto.CategoryDto;
import com.syld.store.dto.ProductViewDto;
import com.syld.store.dto.ShopViewDto;
import com.syld.store.services.category.CategoryService;
import com.syld.store.services.product.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
@Transactional
public class ProductDetailService {

    private final ShopService shopService;
    private final ProductService productService;

    public ProductViewDto getBySlug(String slug) {
        ProductViewDto productViewDto = productService.findBySlugAndReturnDto(slug);
        if (productViewDto != null) {
            return productViewDto;
        }
        return null;
    }

    public ShopViewDto getCategoryAndTag(){
       ShopViewDto shopViewDto = new ShopViewDto();
       shopService.GetCategoryAndTag(shopViewDto);
       return shopViewDto;
    }

    public List<ProductViewDto> getRelated(CategoryDto categoryDto,int limit) {
        try {
            int page = 1;
            List<ProductViewDto> productViewDtoList =  productService.getProductByCategory(categoryDto,page,limit).getContent();
            for (ProductViewDto productViewDto : productViewDtoList){
                productViewDto.convertData();
            }
            return productViewDtoList;
        } catch (Exception e) {
            log.info(e.getMessage());
            return null;
        }
    }
}
