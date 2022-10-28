package com.syld.store.repositories;

import com.syld.store.entities.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CardRepository extends JpaRepository<Card, String> {

    @Query(value = "select * from card where id = ?1", nativeQuery = true)
    Card getById(String id);

    @Query(value = "select * from card where card_brand = ?1", nativeQuery = true)
    Card findByCard_brand(String card_brand);

    @Query(value = "select * from card where card_number = ?1", nativeQuery = true)
    Card findByCard_number(String card_number);
}