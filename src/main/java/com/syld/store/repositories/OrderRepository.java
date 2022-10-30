package com.syld.store.repositories;

import com.syld.store.entities.OrderEntity;
import com.syld.store.entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface OrderRepository extends JpaRepository<OrderEntity, String> {

    Page<OrderEntity> findAllByUser(User user, Pageable pageable);

}
