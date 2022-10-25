package com.syld.store.services.client;

import com.syld.store.dto.CartClientView;
import com.syld.store.dto.CategoryDto;
import com.syld.store.dto.ListCategoryDto;
import com.syld.store.entities.Cart;
import com.syld.store.entities.Category;
import com.syld.store.services.Cart.CartService;
import com.syld.store.services.category.CategoryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class NavbarService {

    private final CategoryService categoryService;

    private final CartService cartService;

    public List<ListCategoryDto> getAllCategory() {
        try {
            int countOfCategory = 5;
            return categoryService.getByParentList().subList(0, countOfCategory);
//            fetchCart
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return null;
    }

    public CartClientView getUserCart(String username) {
        try {
            return cartService.getByUser(username);
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return null;
    }

}
