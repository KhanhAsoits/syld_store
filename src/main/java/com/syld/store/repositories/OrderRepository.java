package com.syld.store.repositories;

import com.syld.store.dto.UserOrderDto;
import com.syld.store.entities.OrderEntity;
import com.syld.store.entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface OrderRepository extends JpaRepository<OrderEntity, String> {

    @Query(value = "select * from order_entity where order_name = ?1", nativeQuery = true)
    OrderEntity findByName(String name);

    @Query(value = "select * from order_entity where order_name ?1", nativeQuery = true)
    Optional<OrderEntity> getByNameNotSame(String order_name, String id);

    Page<OrderEntity> findAllByUser(User user, Pageable pageable);

    @Query(value = "select * from order_entity where  order_entity.update_at between (NOW() - INTERVAL 1 MONTH) and NOW() ORDER BY order_entity.update_at limit 8  offset 0",nativeQuery = true)
    Optional<List<OrderEntity>> getRecentOrder();
    @Query(value = "select * from order_entity ", nativeQuery = true)
    OrderEntity getAll();

    @Query(value = "select * from order_entity where order_state = 0", nativeQuery = true)
    OrderEntity findUnpaidOrder();

}
