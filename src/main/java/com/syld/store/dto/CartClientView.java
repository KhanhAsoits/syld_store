package com.syld.store.dto;

import com.syld.store.entities.Product;
import com.syld.store.entities.ProductCart;
import com.syld.store.entities.User;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Getter
@Setter
public class CartClientView {
    private String Id;
    private boolean state = Boolean.TRUE;
    private Timestamp create_at = new Timestamp(System.currentTimeMillis());
    private Timestamp update_at = new Timestamp(System.currentTimeMillis());
    User user;
    Set<ProductCart> productCarts = new HashSet<>();
    public float getSalePrice(Product product) {
        return product.getProduct_price() - (product.getProduct_price() * (product.getSale_off() > 0 ? product.getSale_off() / 100 : 0));
    }
}
