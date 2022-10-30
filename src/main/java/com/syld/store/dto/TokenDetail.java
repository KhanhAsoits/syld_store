package com.syld.store.dto;

import lombok.Data;
import org.hibernate.procedure.spi.ParameterRegistrationImplementor;

import java.util.Date;

@Data
public class TokenDetail {
    private Date expire_at;
    private String subject;
    private String claim;
}
