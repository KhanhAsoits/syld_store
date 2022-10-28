package com.syld.store.services.Cart;

import com.syld.store.dto.CartClientView;
import com.syld.store.dto.CartDto;
import com.syld.store.entities.User;
import com.syld.store.interfaces.services.ICrudService;
import org.springframework.stereotype.Service;

@Service
public interface CartService extends ICrudService<CartDto,String> {

    public CartClientView AddProductToCart(CartDto cartDto);

    CartClientView getByUser(String userId);

    CartClientView RemoveProductFromCart(String product_id,String username);

    CartClientView getById(String cart_id);

    void clear(User user);
}
