package com.syld.store.entities;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
@Getter
@Setter
public class ProductCart {
    @Id
    private String Id;

    int quantity;

    @OneToOne
    private Product product;
}
