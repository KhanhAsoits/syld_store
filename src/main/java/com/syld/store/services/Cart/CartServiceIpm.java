package com.syld.store.services.Cart;

import com.syld.store.dto.CartClientView;
import com.syld.store.dto.CartDto;
import com.syld.store.dto.ProductViewDto;
import com.syld.store.dto.UserClientDto;
import com.syld.store.entities.Cart;
import com.syld.store.entities.Product;
import com.syld.store.entities.ProductCart;
import com.syld.store.entities.User;
import com.syld.store.repositories.CartRepository;
import com.syld.store.repositories.ProductCartRepository;
import com.syld.store.services.product.ProductService;
import com.syld.store.services.user.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Service;

import javax.swing.text.html.Option;
import javax.transaction.Transactional;
import java.util.IllegalFormatCodePointException;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class CartServiceIpm implements CartService {
    private final CartRepository cartRepository;
    private final ProductService productService;
    private final UserService userService;

    private ProductCartRepository productCartRepository;

    public Cart save_(CartDto entity) throws Exception {
        try {
            Cart cart = new Cart();
            UserClientDto userClientDto = userService.findById(entity.getUser_id());
            User user = new User();
            BeanUtils.copyProperties(user, userClientDto);
            cart.setUser(user);
            cart.setId(UUID.randomUUID().toString());
            cartRepository.save(cart);
            return cart;
        } catch (Exception e) {
            log.info(e.getMessage());
            return null;
        }
    }

    @Override
    public void save(CartDto entity) throws Exception {
    }

    @Override
    public void update(CartDto entity) throws Exception {

    }

    @Override
    public void remove(String Id) throws Exception {

    }

    @Override
    public CartClientView AddProductToCart(CartDto cartDto) {
        CartClientView cartClientView = new CartClientView();
        try {
            Cart cart = new Cart();
            if (cartDto.getId() != null && !Objects.equals(cartDto.getId(), "")) {
                //            create new cart if non - exits
                BeanUtils.copyProperties(cart, this.save_(cartDto));
            } else {
                Optional<Cart> cart_ = cartRepository.findById(cart.getId());
                if (cart_.isPresent()) {
                    cart = cart_.get();
                }
            }

            boolean isHas = false;
            if (cart.getUser() != null) {
                ProductViewDto productViewDto = productService.getById(cartDto.getProduct_id());
                Product product_ = new Product();
                for (ProductCart product : cart.getProductCarts()) {
                    if (Objects.equals(product.getProduct().getId(), productViewDto.getId())) {
                        isHas = true;
                        product.getProduct().setProduct_quantity(product.getProduct().getProduct_quantity() + cartDto.getQuantity());
                        break;
                    }
                }
                if (!isHas) {
                    BeanUtils.copyProperties(productViewDto, product_);
                    ProductCart productCart = new ProductCart();
                    productCart.setId(UUID.randomUUID().toString());
                    productCart.setProduct(product_);
                    String id = productCart.getId();
                    productCartRepository.save(productCart);

                    Optional<ProductCart> productCart_ = productCartRepository.findById(id);
                    if (productCart_.isPresent()) {
                        cart.getProductCarts().add(productCart_.get());
                    }
                }

                String card_id = cart.getId();
                cartRepository.save(cart);
                Optional<Cart> updated_cart = cartRepository.findById(card_id);
                if (updated_cart.isPresent()) {
                    cartClientView = new ModelMapper().map(cart, CartClientView.class);
                }
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return cartClientView;
    }

    @Override
    public CartClientView getByUser(String userId) {
        try {
            User user = userService.findByName(userId);
            if (user != null) {
                Optional<Cart> cart = cartRepository.findByUser(user);
                if (cart.isPresent()) {
                    return new ModelMapper().map(cart.get(), CartClientView.class);
                }
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return null;
    }
}
