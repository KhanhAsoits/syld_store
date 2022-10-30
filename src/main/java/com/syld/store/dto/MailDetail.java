package com.syld.store.dto;

import lombok.Data;

@Data
public class MailDetail {
    private String to;
    private String mgs;
    private String subject;
    private String attachment;
}
