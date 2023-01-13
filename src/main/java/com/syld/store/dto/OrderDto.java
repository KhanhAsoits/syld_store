package com.syld.store.dto;

import com.syld.store.entities.Cart;
import com.syld.store.entities.Product;
import com.syld.store.entities.ProductCart;
import com.syld.store.entities.User;
import lombok.Data;


import javax.validation.constraints.Min;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Data
public class OrderDto {
    private String Id;

    private boolean state = Boolean.TRUE;
    private Timestamp create_at = new Timestamp(System.currentTimeMillis());
    private Timestamp update_at = new Timestamp(System.currentTimeMillis());

    User user;

    Cart cart;

    private String order_name;

    @Min(1)
    private float order_amount = 1;

    private List<ProductCart> productCart = new ArrayList<>();
    private int order_state = 0;
    //0 la dang thanh toan
    //1 chua xac nhan
    //2 dang giao hang
    //3 da nhan hang
    //4 thanh cong

    //    nhan data
    private String cart_id;

    private String ship_mode;

    public String getColor(int state) {
        switch (state) {
            case 0:
                return "yellow";
            case 1:
                return "lightblue";
            case 2:
                return "red";
            case 3:
                return "blue";
            case 4:
                return "black";
        }
        return "black";
    }

    public String format(String cssClass, String content, String cssStyle) {
        return String.format("<button class='btn %s' style='%s'>%s</button>", cssClass,cssStyle, content.toLowerCase());
    }

    public int getProductQuantity(){
        List<Integer> quantities = this.productCart.stream().map(productCart1 -> productCart1.getQuantity()).toList();
        int quan = 0;
        for (int quantity : quantities){
            quan+=quantity;
        }
        return quan;
    }


    public String productNameJoin(){
        List<ProductCart> productCarts =  this.productCart;
        List<Product> products = new ArrayList<>();
        productCarts.forEach(productCart1 -> {
            products.add(productCart1.getProduct());
        });
        List<String> productNameList = products.stream().map(product -> product.getProduct_name()).toList();
        String [] productNameArr = productNameList.toArray(String[]::new);
        return  Arrays.stream(productNameArr).collect(Collectors.joining(","));
    }
    public String orderStateString() {
        String result = "";
        switch (this.order_state) {
            case 0:
                result = format("red", "Chưa thanh toán ", "");
                break;
            case 1:
                result = format("yellow", "Chờ xác nhận", "");
                break;
            case 2:
                result = format("orange", "Đang giao", "");
                break;
            case 3:
                result = format("blue", "Đơn Hủy", "");
                break;
            case 4:
                result = format("lightgreen", "Đã xác nhận", "");
                break;
            default:
                result = format("btn-cancel", "CANCEL", "");
        }
        return result;
    }
}
