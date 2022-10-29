package com.syld.store.services.user;

import com.syld.store.dto.UserClientDto;
import com.syld.store.entities.User;
import com.syld.store.interfaces.services.ICrudService;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public interface UserService extends ICrudService<UserClientDto,String> {
    UserClientDto findByEmail(String email);

    User findByName(String name);
    List<UserClientDto> findAll();

    UserClientDto findByNumberPhone(String number_phone);

    UserClientDto findById(String id);

    UserClientDto findByEmailNotSame(String email, String id);

    UserClientDto findByPhoneNotSame(String phone, String id);

    void updateAddressAndPhone(String email,String address, String phone_number);
}