package com.syld.store.dto;

import com.syld.store.ultis.SlugGenerator;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ProductByCategoryDto {
    private CategoryDto categoryDto;
    private List<ProductViewDto> productViewDtoList;
    public String toSlug(){
        return SlugGenerator.toSlug(this.categoryDto.getCategory_name());
    }
}
