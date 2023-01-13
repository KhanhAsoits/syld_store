package com.syld.store.services.Cart;

import com.syld.store.dto.*;
import com.syld.store.entities.*;
import com.syld.store.repositories.CartRepository;
import com.syld.store.repositories.ProductCartRepository;
import com.syld.store.services.color.ColorService;
import com.syld.store.services.product.ProductService;
import com.syld.store.services.size.SizeService;
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

    private final ColorService colorService;

    private final SizeService sizeService;
    private final ProductCartRepository productCartRepository;

    public Cart save_(CartDto entity) throws Exception {
        try {
            Cart cart = new Cart();
            UserClientDto userClientDto = userService.findByEmail(entity.getUser_id());
            User user = new User();
            BeanUtils.copyProperties(userClientDto, user);
            cart.setUser(user);
            cart.setId(UUID.randomUUID().toString());
            return cartRepository.save(cart);
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

    public void update_(ListProductCartDto cartClientView) {
        try {
            Optional<Cart> cart = cartRepository.findById(cartClientView.getCart_id());
            if (cart.isPresent()) {
                for (ProductCart productCart : cart.get().getProductCarts()) {
                    for (ProductCart productCart_ : cartClientView.getProductCarts()) {
                        if (productCart_.getId().equals(productCart.getId())) {
                            productCart.setQuantity(productCart_.getQuantity());
                        }
                    }
                }
                cartRepository.save(cart.get());
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
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
                Optional<Cart> cart_ = cartRepository.findById(cartDto.getId());
                if (cart_.isPresent()) {
                    cart = cart_.get();
                }
                //            create new cart if non - exits
            } else {
                Cart cart_ = this.save_(cartDto);
                BeanUtils.copyProperties(cart_, cart);
            }

            boolean isHas = false;
            if (cart.getUser() != null) {
                ProductViewDto productViewDto = productService.getById(cartDto.getProduct_id());
                Product product_ = new Product();
                for (ProductCart product : cart.getProductCarts()) {
                    if (Objects.equals(product.getProduct().getId(), productViewDto.getId())) {
                        isHas = true;
                        if (cartDto.getQuantity() + product.getQuantity() <= product.getProduct().getProduct_quantity()) {
                            product.setQuantity(product.getQuantity() + cartDto.getQuantity());
                        }
                        break;
                    }
                }
                if (!isHas) {
                    BeanUtils.copyProperties(productViewDto, product_);
                    ProductCart productCart = new ProductCart();
                    productCart.setId(UUID.randomUUID().toString());
                    productCart.setProduct(product_);
                    productCart.setQuantity(cartDto.getQuantity());
                    ColorDto pickedColor = colorService.getByColor_name(cartDto.getPicked_color());
                    if (pickedColor != null) {
                        Color color = new Color();
                        BeanUtils.copyProperties(color,pickedColor);
                        productCart.getPickedColors().add(color);
                    }
                    SizeDto sizeDto = sizeService.getById(cartDto.getPicked_size());
                    if (sizeDto!=null){
                        Size size = new Size();
                        BeanUtils.copyProperties(size,sizeDto);
                        productCart.getPickedSizes().add(size);
                    }

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
    public CartClientView getByUser(String username) {
        try {
            User user = userService.findByName(username);
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

    @Override
    public CartClientView RemoveProductFromCart(String product_id, String username) {
        try {
            Optional<ProductCart> productCart = productCartRepository.findById(product_id);

            if (productCart.isPresent()) {
                User user = userService.findByName(username);
                Optional<Cart> cart = cartRepository.findByUser(user);
                if (cart.isPresent()) {
                    for (ProductCart productCart_ : cart.get().getProductCarts()) {
                        if (productCart_.getId() == productCart.get().getId()) {
                            cart.get().getProductCarts().remove(productCart_);
                            return new ModelMapper().map(cartRepository.save(cart.get()), CartClientView.class);
                        }
                    }
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public CartClientView getById(String cart_id) {
        Optional<Cart> cart = cartRepository.findById(cart_id);
        if (cart.isPresent()) {
            return new ModelMapper().map(cart.get(), CartClientView.class);
        }
        return null;
    }

    @Override
    public void clear(User user) {
        Optional<Cart> cartClientView = cartRepository.findByUser(user);
        if (cartClientView.isPresent()) {
            cartClientView.get().getProductCarts().clear();
        }
    }
}
