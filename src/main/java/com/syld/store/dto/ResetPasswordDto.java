package com.syld.store.dto;

import lombok.Data;
import org.hibernate.procedure.spi.ParameterRegistrationImplementor;

@Data
public class ResetPasswordDto {
    private String email;
    private String new_password;
    private String re_new_password;
}
