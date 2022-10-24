package com.syld.store.dto;

import com.syld.store.entities.Tag;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class ShopViewDto {
    List<ListCategoryDto> categoryDtoList = new ArrayList<>();
//    co the dung den
    List<Tag> tags = new ArrayList<>();
    Page<ProductViewDto> productViewDtoList;
    List<CategoryWithChildNumber> categories = new ArrayList<>();
}
