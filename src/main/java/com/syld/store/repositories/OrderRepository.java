package com.syld.store.repositories;

import com.syld.store.entities.OrderEntity;
import com.syld.store.entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface OrderRepository extends JpaRepository<OrderEntity, String> {

<<<<<<< HEAD
    @Query(value = "select * from order where  order_name = ?1", nativeQuery = true)
    OrderEntity findByName(String name);
=======

    @Query(value = "select * from order where order_name ?1", nativeQuery = true)
    Optional<OrderEntity> getByNameNotSame(String order_name, String id);
>>>>>>> ca533873974c8f15e47aa05121607ce65ee75a92

    Page<OrderEntity> findAllByUser(User user, Pageable pageable);


}
