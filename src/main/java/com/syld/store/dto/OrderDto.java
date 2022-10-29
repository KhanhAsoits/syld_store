package com.syld.store.dto;

import com.syld.store.entities.Cart;
import com.syld.store.entities.User;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.constraints.Min;
import java.sql.Timestamp;

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

    private int order_state = 0;
    //0 la dang thanh toan
    //1 chua xac nhan
    //2 dang giao hang
    //3 da nhan hang
    //4 thanh cong

    //    nhan data
    private String cart_id;

    private String ship_mode;
}
