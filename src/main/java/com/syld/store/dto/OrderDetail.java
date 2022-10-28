package com.syld.store.dto;

import lombok.Data;

@Data
public class OrderDetail {
    private String product_name;
    private String subtotal;
    private String shipping;
    private String tax;
    private int quantity;
    private String total;
}
