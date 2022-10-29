package com.syld.store.dto;

import com.syld.store.entities.Role;
import lombok.Data;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

@Data
public class ClientUserDto {
    String id;
    @NotEmpty(message = "Không được để trống trường email")
    @Email(message = "Định dạng email")
    String email;
    @NotEmpty(message = "Không được để trống trường username !")
    String username;
    String address = null;
    String role_name = "role_user";
    String phone_number = null;

    Role role;

    private boolean state = Boolean.TRUE;

}
