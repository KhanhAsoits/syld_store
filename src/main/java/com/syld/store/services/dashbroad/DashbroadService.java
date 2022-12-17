package com.syld.store.services.dashbroad;

import com.syld.store.interfaces.services.ICrudService;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface DashbroadService extends ICrudService {

    List getAll();
}
