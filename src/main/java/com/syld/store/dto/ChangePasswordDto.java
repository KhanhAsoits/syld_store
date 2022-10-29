package com.syld.store.dto;

import lombok.Data;

@Data
public class ChangePasswordDto {
    private String old_pass;
    private String new_pass;
}
