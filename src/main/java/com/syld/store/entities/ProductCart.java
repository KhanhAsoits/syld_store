package com.syld.store.entities;


import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
@Data
public class ProductCart {
    @Id
    private String Id;

    int quantity;

    @OneToOne
    Product product;
}
