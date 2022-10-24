package com.syld.store.services.product;

import com.syld.store.dto.CategoryDto;
import com.syld.store.dto.ProductByCategoryDto;
import com.syld.store.dto.ProductDto;
import com.syld.store.dto.ProductViewDto;
import com.syld.store.interfaces.services.ICrudService;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ProductService extends ICrudService<ProductDto,String> {

    long findProductNumOfCategory(CategoryDto categoryDto);


    Page<ProductViewDto> getByPage(int page,int limit);
    List<ProductByCategoryDto> getProductByCategory(int count);
    ProductDto findByName(String product_name);
    ProductDto findBySlug(String slug);

    List<ProductViewDto> getAll();

    ProductViewDto getById(String slug);

    List<ProductViewDto> getNewProduct(int i);
}
