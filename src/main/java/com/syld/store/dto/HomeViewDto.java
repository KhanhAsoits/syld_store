package com.syld.store.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class HomeViewDto {
    private List<ProductViewDto> new_products;
    private List<ProductViewDto> best_sell_products;
    private List<ProductByCategoryDto> productByCategoryDtos = new ArrayList<>();
}
