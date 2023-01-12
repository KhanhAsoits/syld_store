package com.syld.store.services.dashbroad;

import com.syld.store.dto.DashboardDto;
import com.syld.store.dto.OrderDto;
import com.syld.store.dto.UserOrderDto;
import com.syld.store.entities.OrderEntity;
import com.syld.store.entities.User;
import com.syld.store.entities.UserOrder;
import com.syld.store.repositories.DashboardRepository;
import com.syld.store.repositories.OrderRepository;
import com.syld.store.repositories.UserOrderRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.criterion.Order;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import javax.swing.text.html.Option;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class DashboardServiceIpm  implements DashboardService{
    private final DashboardRepository dashboardRepository;
    private final UserOrderRepository userOrderRepository;

    private final OrderRepository orderRepository;
    @Override
    public void save(String entity) throws Exception {

    }

    @Override
    public void update(String entity) throws Exception {

    }

    @Override
    public void remove(String Id) throws Exception {

    }

    @Override
    public DashboardDto getData() {
        try{
            DashboardDto dashboardDto = new DashboardDto();
//            phan dau
            dashboardDto.setUser_count(dashboardRepository.countUserById());
            dashboardDto.setProduct_count(dashboardRepository.countProductById());
            dashboardDto.setOrder_count(dashboardRepository.countOrderById());
            dashboardDto.setDaily_income(dashboardRepository.getOrderInDay());

//            recent orders
            List<OrderDto> recentOrder = new ArrayList<>();

            Optional<List<OrderEntity>> order_in_model = orderRepository.getRecentOrder();
            if (order_in_model.isPresent()){
                List<OrderEntity> orders = order_in_model.get();
                recentOrder = orders.stream().map(order -> new ModelMapper().map(order,OrderDto.class)).toList();
            }
            dashboardDto.setRecent_order(recentOrder);
//            user orders;
            List<UserOrderDto> userOrderDtos = new ArrayList<>();
            int limitOfUser = 8;
            Optional<List<UserOrder>> userOrders = userOrderRepository.getOrderByUser(limitOfUser);
            if (userOrders.isPresent()){
                userOrderDtos = userOrders.stream().map(userOrders1 -> new ModelMapper().map(userOrders1,UserOrderDto.class)).toList();
            }
            dashboardDto.setUser_order_dto(userOrderDtos);
            return dashboardDto;
        }catch (Exception e){
            log.info("Error : {}",e.getMessage());
            return null;
        }
    }
}
