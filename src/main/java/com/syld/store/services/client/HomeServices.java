package com.syld.store.services.client;

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


}
