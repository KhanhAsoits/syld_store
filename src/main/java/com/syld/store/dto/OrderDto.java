package com.syld.store.dto;

import com.syld.store.entities.Cart;
import com.syld.store.entities.ProductCart;
import com.syld.store.entities.User;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
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

    public String format(String cssClass, String content) {
        return String.format("<button class='btn %s'>%s</button>", cssClass, content.toLowerCase());
    }

    public String orderStateString() {
        String result = "";
        switch (this.order_state) {
            case 0:
                result = format("btn-warning", "UNPAID");
                break;
            case 1:
                result = format("btn-primary", "WAITING CONFIRM");
                break;
            case 2:
                result = format("btn-secondary", "SHIPPING");
                break;
            case 3:
                result = format("btn-info", "RECEIVED");
                break;
            case 4:
                result = format("btn-success", "SUCCESS");
                break;
        }
        return result;
    }
}
