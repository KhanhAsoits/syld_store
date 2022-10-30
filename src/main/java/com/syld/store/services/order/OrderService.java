package com.syld.store.services.order;

import com.syld.store.dto.OrderDto;
import com.syld.store.interfaces.services.ICrudService;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService extends ICrudService<OrderDto, String> {

    void pay_success(String order_id);

    void cancel_pay(String order_id);

    Page<OrderDto> getAll(String email, int page, int limit);
}
