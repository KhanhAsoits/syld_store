package com.syld.store.services.dashbroad;

import com.syld.store.dto.DashboardDto;
import com.syld.store.interfaces.services.ICrudService;
import org.springframework.stereotype.Service;
@Service
public interface DashboardService extends ICrudService<String,String> {
    DashboardDto getData();

}
