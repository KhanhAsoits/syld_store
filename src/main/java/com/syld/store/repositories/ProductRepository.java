package com.syld.store.repositories;

import com.syld.store.entities.Category;
import com.syld.store.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProductRepository extends JpaRepository<Product,String> {
    List<Product> findAllByCategory(Category category);
    @Query(value = "select * from product where product_name = ?1",nativeQuery = true)
    Optional<Product> findByName(String product_name);
    @Query(value = "select * from product where slug = ?1",nativeQuery = true)
    Optional<Product> findBySlug(String slug);

    @Query(value = "select count (p)  from product p  where p.category_id = ?1",nativeQuery = true)
    long findNumberOfProductByCategoryId(String category_id);

    long countByCategory(Category category);
}
