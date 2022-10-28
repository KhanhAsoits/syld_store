package com.syld.store.services.order;

import com.paypal.api.payments.Order;
import com.syld.store.dto.*;
import com.syld.store.entities.Cart;
import com.syld.store.entities.OrderEntity;
import com.syld.store.entities.ProductCart;
import com.syld.store.entities.User;
import com.syld.store.repositories.OrderRepository;
import com.syld.store.services.Cart.CartService;
import com.syld.store.services.user.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.swing.text.html.Option;
import javax.transaction.Transactional;
import java.util.Optional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class OrderServiceIpm implements OrderService {
    private final CartService cartService;
    private final UserService userService;

    private final OrderRepository orderRepository;

    public String save_(OrderDto entity) {
        try {
            CartClientView cartClientView = cartService.getById(entity.getCart_id());
            Cart cart = new ModelMapper().map(cartClientView, Cart.class);
            OrderEntity orderEntity = new OrderEntity();
            orderEntity.setId(UUID.randomUUID().toString());
            orderEntity.setOrder_state(0);

            float total = 0;
            for (ProductCart productCart : cart.getProductCarts()) {
                float each_total = cartClientView.getSalePrice(productCart.getProduct()) * productCart.getQuantity();
                total += each_total;
            }
            orderEntity.setOrder_amount(total + 1 + Float.parseFloat(entity.getShip_mode()));

            userService.updateAddressAndPhone(entity.getUser().getEmail(), entity.getUser().getAddress(), entity.getUser().getPhone_number());
            UserClientDto userClientDto = userService.findByEmail(entity.getUser().getEmail());
            User user = new User();
            orderEntity.setProductCart(cart.getProductCarts().stream().toList());
            BeanUtils.copyProperties(userClientDto, user);
            orderEntity.setUser(user);
            orderEntity.setOrder_name(String.format("Order_%s_User_%s", UUID.randomUUID().toString(), user.getEmail()));
            orderRepository.save(orderEntity);
            return orderEntity.getId();
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return null;
    }

    @Override
    public void save(OrderDto entity) throws Exception {

    }

    @Override
    public void update(OrderDto entity) throws Exception {

    }

    @Override
    public void remove(String Id) throws Exception {

    }

    @Override
    public void pay_success(String order_id) {
        Optional<OrderEntity> order = orderRepository.findById(order_id);
        if (order.isPresent()) {
            order.get().setOrder_state(1);
            orderRepository.save(order.get());
            cartService.clear(order.get().getUser());
        }
    }

    @Override
    public void cancel_pay(String order_id) {
        Optional<OrderEntity> order = orderRepository.findById(order_id);
        if (order.isPresent()) {
            orderRepository.delete(order.get());
        }
    }
}
