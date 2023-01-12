package com.syld.store.dto;

import lombok.Data;

import java.util.List;

@Data
public class DashboardDto {
    private String id;
    private long user_count;
    private long order_count;
    private long product_count;
    private float daily_income;

    private List<UserOrderDto> user_order_dto;
    private List<OrderDto> recent_order;


}
