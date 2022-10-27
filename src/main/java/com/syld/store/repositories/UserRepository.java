package com.syld.store.repositories;


import com.syld.store.dto.UserClientDto;
import com.syld.store.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, String> {
    Optional<User> findByEmail(String email);

    Optional<User> findByUsername(String user_name);

    @Query(value = "select * from user where phone_number =?1", nativeQuery = true)
    User findByPhone(String number_phone);

    @Query(value = "select * from user where email=?1 and id!=?2", nativeQuery = true)
    UserClientDto findByEmailNotSame(String email, String id);

    @Query(value = "select * from user where phone_number=?1 and id!=?2", nativeQuery = true)
    UserClientDto findByPhoneNotSame(String phone, String id);
}
