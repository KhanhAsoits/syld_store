package com.syld.store.repositories;

import com.syld.store.dto.UserOrderDto;
import com.syld.store.entities.OrderEntity;
import com.syld.store.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface DashboardRepository extends JpaRepository<User,String> {
    @Query(value = "select  count(*) from user",nativeQuery = true)
    long countUserById();

    @Query(value = "select count(*) from order_entity",nativeQuery = true)
    long countOrderById();
    @Query(value = "select count(*) from product",nativeQuery = true)
    long countProductById();

    @Query(value = "SELECT SUM(order_amount) FROM order_entity WHERE order_entity.update_at BETWEEN ( NOW() - INTERVAL 1  MONTH ) AND NOW()",nativeQuery = true)
    long getOrderInDay();



}


