package com.syld.store.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CategoryWithChildNumber {
    CategoryDto categoryDto;
    long product_count;
}
