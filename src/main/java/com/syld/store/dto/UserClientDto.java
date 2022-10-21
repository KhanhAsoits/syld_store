package com.syld.store.dto;

import com.syld.store.entities.Role;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

@Data
@NoArgsConstructor
public class UserClientDto {
    String id;
    @NotEmpty(message = "Không được để trống trường email")
    @Email(message = "Định dạng email")
    String email;
    @NotEmpty(message = "Không được để trống trường username !")
    String username;
    String address = null;
    String role_name = "role_user";
    @NotEmpty(message = "Không được để trống trường mật khẩu !")
    String password = "2";
    @NotEmpty(message ="Không được để trống trường nhâp lại mật khẩu !")
    String rePassword = "1";
    String avatar;
    String phoneNumber = null;

    Role role;

    private boolean state = Boolean.TRUE;

    MultipartFile file;
}
