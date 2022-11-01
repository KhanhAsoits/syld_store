package com.syld.store.dto;

import com.syld.store.entities.ProductCart;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
public class ListProductCartDto {

    String cart_id;
    List<ProductCart> productCarts = new ArrayList<>();

}
