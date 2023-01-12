package com.syld.store.dto;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartDto {
    String id;
    String product_id;
    String user_id;
    int quantity = 1;

    String picked_color;

    String picked_size;
}
