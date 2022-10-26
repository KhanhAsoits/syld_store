package com.syld.store.repositories;

import com.syld.store.entities.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CardRepository extends JpaRepository<Card, String> {

    @Query(value = "select * from card where id = ?1", nativeQuery = true)
    Card getById(String id);

}