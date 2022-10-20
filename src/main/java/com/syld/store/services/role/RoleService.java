package com.syld.store.services.role;

import com.syld.store.dto.RoleDto;
import com.syld.store.entities.Role;
import com.syld.store.interfaces.services.ICrudService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface RoleService extends ICrudService<RoleDto,String> {
    Role getByName(String role_name);
    List<RoleDto> getRoles();
}
