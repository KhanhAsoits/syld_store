package com.syld.store.dto;

import com.syld.store.entities.Cart;
import com.syld.store.entities.ProductCart;
import com.syld.store.entities.User;
import lombok.Data;


import javax.validation.constraints.Min;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

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

    public String orderStateString() {
        String result = "";
        switch (this.order_state) {
            case 0:
                result = format("", "UNPAID", "");
                break;
            case 1:
                result = format("", "WAITING CONFIRM", "");
                break;
            case 2:
                result = format("", "SHIPPING", "");
                break;
            case 3:
                result = format("", "RECEIVED", "");
                break;
            case 4:
                result = format("", "SUCCESS", "");
                break;
            default:
                result = format("btn-cancel", "CANCEL", "");
        }
        return result;
    }
}
