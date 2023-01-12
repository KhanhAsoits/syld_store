package com.syld.store.dto;

import lombok.Data;

@Data
public class UserOrderDto {
    private String id;
    private String user_id;
    private String username;
    private String email;
    private String avatar;
    private long order_amount;
    private long order_count;

}
