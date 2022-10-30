package com.syld.store.services.order;

import com.syld.store.dto.OrderDto;
import com.syld.store.interfaces.services.ICrudService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService extends ICrudService<OrderDto, String> {

    void pay_success(String order_id);

    void cancel_pay(String order_id);

    List<OrderDto> getAll();

    OrderDto getById(String id);

    OrderDto getByNameNotSame(String order_name, String id);
}
