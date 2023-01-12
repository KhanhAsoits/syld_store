package com.syld.store.repositories;

import com.syld.store.dto.UserOrderDto;
import com.syld.store.entities.UserOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserOrderRepository extends JpaRepository<UserOrder,Long> {
    @Query(value = "SELECT user.id,user.username,user.email,user.avatar,SUM(order_entity.order_amount),COUNT(order_entity.id) FROM user  JOIN order_entity on user.id=order_entity.user_id LIMIT 0  OFFSET 0",nativeQuery = true)
    Optional<List<UserOrder>> getOrderByUser(int limit);
}
