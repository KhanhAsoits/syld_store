package com.syld.store.entities;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
public class UserOrder {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "id", nullable = false)
    private Long id;

    private String user_id;
    private String username;
    private String email;
    private String avatar;
    private long order_amount;
    private long order_count;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
