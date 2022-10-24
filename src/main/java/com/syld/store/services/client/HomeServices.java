package com.syld.store.services.client;

import com.syld.store.dto.HomeViewDto;
import com.syld.store.entities.Category;
import com.syld.store.services.category.CategoryService;
import com.syld.store.services.product.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class HomeServices {

    private final ProductService productService;
    private final CategoryService categoryService;

    public HomeViewDto getData() {
        try {
            int count_of_new_product = 6;
            int count_of_category = 6;
            HomeViewDto homeViewDto = new HomeViewDto();
            homeViewDto.setNew_products(productService.getNewProduct(count_of_new_product));
            homeViewDto.setProductByCategoryDtos(productService.getProductByCategory(count_of_category));
            return homeViewDto;
        }catch (Exception e){
            e.getMessage();
            return null;
        }
    }
}
