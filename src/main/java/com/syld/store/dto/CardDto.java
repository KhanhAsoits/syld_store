package com.syld.store.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
public class CardDto {

    private String Id;
    private boolean state = Boolean.TRUE;
    private String card_number;
    private String card_brand;
    private String brand_thumbnail;

    private String bank_name;
    private String user_email;
    MultipartFile file;

}
