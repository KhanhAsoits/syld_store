package com.syld.store.entities;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Getter
@Setter
public class ProductCart {
    @Id
    private String Id;

    int quantity;
    @OneToMany
    Set<Color> pickedColors = new HashSet<>();

    @OneToMany
    Set<Size> pickedSizes = new HashSet<>();

    @OneToOne
    private Product product;
}
