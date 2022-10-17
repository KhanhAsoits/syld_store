package com.syld.store.entities;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.SQLDelete;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@SQLDelete(sql = "UPDATE brand SET = false WHERE id = ?")
public class Brand {

    @javax.persistence.Id
    private String Id;

    @Column(unique = true)
    private String brand_name;

    @Column
    private String brand_slug;
    @Column
    private String brand_desc;

    private boolean state = Boolean.TRUE;
    // Auto thời gian tạo
    private Timestamp create_at = new Timestamp(System.currentTimeMillis());
    // Auto thời gian sửa
    private Timestamp update_at = new Timestamp(System.currentTimeMillis());
    // Update ảnh
    @Nullable
    private String brand_logo;

    @OneToMany(mappedBy = "brand")
    List<Product> productList = new ArrayList<>();

    public void addProductToBrand(Product product) {
        this.productList.add(product);
    }
}
