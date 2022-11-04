package com.syld.store.services.order;

import com.syld.store.dto.OrderDto;
import com.syld.store.entities.OrderEntity;
import com.syld.store.interfaces.services.ICrudService;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface OrderService extends ICrudService<OrderDto, String> {

    void pay_success(String order_id);

    void cancel_pay(String order_id);


    List<OrderDto> getAll();

    OrderDto getById(String id);

    OrderDto getByNameNotSame(String order_name, String id);

    Page<OrderDto> getAll(String email, int page, int limit);

    void change_state(String id, int status);

    OrderEntity findUnpaidOrder();
}
