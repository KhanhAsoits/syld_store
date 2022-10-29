package com.syld.store.services.user;

import com.fasterxml.jackson.databind.util.BeanUtil;
import com.syld.store.dto.ChangePasswordDto;
import com.syld.store.dto.ClientUserDto;
import com.syld.store.dto.UserClientDto;
import com.syld.store.entities.Role;
import com.syld.store.entities.User;
import com.syld.store.repositories.UserRepository;
import com.syld.store.services.role.RoleService;
import com.syld.store.ultis.SlugGenerator;
import com.syld.store.ultis.Uploader;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.*;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class UserServiceIpm implements UserService {

    private final UserRepository userRepository;

    private final RoleService roleService;

    @Override
    public void save(UserClientDto entity) {
        try {
            User user = new ModelMapper().map(entity, User.class);
            user.setId(UUID.randomUUID().toString());
//            add role to user
            Role role = roleService.getByName(entity.getRole_name());

            String avatar = new Uploader().upload(entity.getFile(), SlugGenerator.toSlug(user.getUsername()));

            user.setAvatar(avatar);

            if (role != null) {
                user.setRole(role);
            }

            if (Objects.equals(user.getPhone_number(), "")) {
                user.setPhone_number(null);
            }
            if (Objects.equals(user.getAddress(), "")) {
                user.setAddress(null);
            }
            user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
            userRepository.save(user);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
    }


    @Override
    public void update(UserClientDto entity) {
        try {
            Optional<User> user = userRepository.findById(entity.getId());
            if (user.isPresent()) {
                String old_avt = user.get().getAvatar();
                BeanUtils.copyProperties(entity, user.get());
                Role role = roleService.getByName(entity.getRole_name());
                String avatar = "";
                if (entity.getFile() != null && (!Objects.equals(entity.getFile().getOriginalFilename(), ""))) {
                    avatar = new Uploader().upload(entity.getFile(), SlugGenerator.toSlug(user.get().getUsername()));
                    user.get().setAvatar(avatar);
                } else {
                    user.get().setAvatar(old_avt);
                }
                if (role != null) {
                    user.get().setRole(role);
                }
                if (Objects.equals(user.get().getPhone_number(), "")) {
                    user.get().setPhone_number(null);
                }

                if (Objects.equals(user.get().getAddress(), "")) {
                    user.get().setAddress(null);
                }
                userRepository.save(user.get());
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
    }

    @Override
    public void remove(String Id) {

    }

    @Override
    public void client_update(ClientUserDto entity) {
        try {
            Optional<User> user = userRepository.findById(entity.getId());
            if (user.isPresent()) {
                String old_avt = user.get().getAvatar();
                BeanUtils.copyProperties(entity, user.get());
                Role role = roleService.getByName(entity.getRole_name());
                if (role != null) {
                    user.get().setRole(role);
                }
                if (Objects.equals(user.get().getPhone_number(), "")) {
                    user.get().setPhone_number(null);
                }

                if (Objects.equals(user.get().getAddress(), "")) {
                    user.get().setAddress(null);
                }
                userRepository.save(user.get());
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }

    }

    @Override
    public UserClientDto findByEmail(String email) {
        Optional<User> user = userRepository.findByEmail(email);
        if (user.isPresent()) {
            return new ModelMapper().map(user.get(), UserClientDto.class);
        }
        return null;
    }

    @Override
    public User findByName(String name) {
        Optional<User> user = userRepository.findByEmail(name);
        return user.orElse(null);
    }

    @Override
    public List<UserClientDto> findAll() {
        List<User> users = userRepository.findAll();
        return users.stream().map(user -> new ModelMapper().map(user, UserClientDto.class)).toList();
    }

    @Override
    public UserClientDto findByNumberPhone(String number_phone) {
        User user = userRepository.findByPhone(number_phone);
        return user != null ? new ModelMapper().map(user, UserClientDto.class) : null;
    }

    @Override
    public UserClientDto findById(String id) {
        Optional<User> user = userRepository.findById(id);
        if (user.isPresent()) {
            return new ModelMapper().map(user.get(), UserClientDto.class);
        }
        return null;
    }

    @Override
    public UserClientDto findByEmailNotSame(String email, String id) {
        return userRepository.findByEmailNotSame(email, id);
    }

    @Override
    public UserClientDto findByPhoneNotSame(String phone, String id) {
        return userRepository.findByPhoneNotSame(phone, id);
    }

    @Override
    public void updateAddressAndPhone(String email, String address, String phone_number) {
        try {
            Optional<User> userClientDto = userRepository.findByEmail(email);
            if (userClientDto.isPresent()) {
                userClientDto.get().setAddress(address);
                userClientDto.get().setPhone_number(phone_number);
                userRepository.save(userClientDto.get());
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
    }

    @Override
    public boolean changePassword(String email, ChangePasswordDto changePasswordDto) {

        boolean isSuccess = false;

        try {
            Optional<User> userClientDto = userRepository.findByEmail(email);
            if (userClientDto.isPresent()) {
                if (new BCryptPasswordEncoder().matches(changePasswordDto.getOld_pass(), userClientDto.get().getPassword())) {
                    userClientDto.get().setPassword(new BCryptPasswordEncoder().encode(changePasswordDto.getNew_pass()));
                    userRepository.save(userClientDto.get());
                    isSuccess = true;
                }
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return isSuccess;
    }
}














