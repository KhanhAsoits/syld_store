package com.syld.store.entities;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Setter
@Getter
public class Category {

    @javax.persistence.Id
    private String Id;


}
