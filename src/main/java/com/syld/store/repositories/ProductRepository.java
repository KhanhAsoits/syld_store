package com.syld.store.repositories;

import com.syld.store.entities.Category;
import com.syld.store.entities.Product;
import com.syld.store.entities.Tag;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProductRepository extends JpaRepository<Product, String> {
    List<Product> findAllByCategory(Category category);

    @Query(value = "SELECT * from product  JOIN category ON category.id = product.category_id JOIN product_tags ON product_tags.product_id join tag on tag.id = product_tags.tags_id JOIN product_thumbnails ON product_thumbnails.product_id = product.id WHERE product.product_name LIKE %?1% or category_name LIKE %?1% or tag.tag_name LIKE %?1% group by product.id ", nativeQuery = true)
    List<Product> findAllByKeyword(String keyword, Pageable pageable);

    Page<Product> findAllByTags(Tag tag, Pageable pageable);

    Page<Product> findAllByCategory(Category category, Pageable pageable);

    @Query(value = "select * from product where product_name = ?1", nativeQuery = true)
    Optional<Product> findByName(String product_name);

    @Query(value = "select * from product where slug = ?1", nativeQuery = true)
    Optional<Product> findBySlug_(String slug);

    Optional<Product> findBySlug(String slug);

    @Query(value = "select count (p)  from product p  where p.category_id = ?1", nativeQuery = true)
    long findNumberOfProductByCategoryId(String category_id);

    long countByCategory(Category category);
}
