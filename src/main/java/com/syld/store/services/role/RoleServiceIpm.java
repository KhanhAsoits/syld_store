package com.syld.store.services.role;

import com.syld.store.dto.RoleDto;
import com.syld.store.entities.Role;
import com.syld.store.repositories.RoleRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor

public class RoleServiceIpm implements RoleService {

    private final RoleRepository roleRepository;

    @Override
    public void save(RoleDto entity) throws Exception {
        try {
            Role role = new ModelMapper().map(entity, Role.class);
            role.setId(UUID.randomUUID().toString());
            roleRepository.save(role);
        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    public void update(RoleDto entity) {
        Optional<Role> role = roleRepository.findByRole_name(entity.getRole_name());
        if (role.isPresent()) {
            BeanUtils.copyProperties(entity, role.get());
            roleRepository.save(role.get());
        }
    }

    @Override
    public void remove(String Id) throws Exception {
        try {
            Optional<Role> role = roleRepository.findById(Id);
            if (role.isPresent()) {
                roleRepository.deleteById(Id);
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
    }

    @Override
    public Role getByName(String role_name) {
        Optional<Role> role = roleRepository.findByRole_name(role_name);
        return role.orElse(null);
    }

    @Override
    public List<RoleDto> getRoles() {
        return roleRepository.findAll().stream().map(role -> new ModelMapper().map(role, RoleDto.class)).toList();
    }
}
