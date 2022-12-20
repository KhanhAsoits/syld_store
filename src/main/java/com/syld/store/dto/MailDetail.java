package com.syld.store.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MailDetail {
    private String to;
    private String mgs;
    private String subject;
    private String attachment;
}
