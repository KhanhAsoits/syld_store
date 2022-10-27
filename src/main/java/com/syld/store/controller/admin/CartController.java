package com.syld.store.controller.admin;

import com.google.gson.Gson;
import com.syld.store.dto.CartDto;
import com.syld.store.services.Cart.CartService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@RequiredArgsConstructor
@RequestMapping(path = "/cart")
public class CartController {

    private final CartService cartService;

    @PostMapping(path = "/create")
    public ResponseEntity<?> AddProductToCart(@RequestBody CartDto cartDto) {
        try {
            return ResponseEntity.ok().body(cartService.AddProductToCart(cartDto));
        } catch (Exception e) {
            log.info(e.getMessage());
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PostMapping(path = "/remove/{product_id}/{username}")
    public ResponseEntity<?> RemoveProductFromCart(@PathVariable String product_id, @PathVariable String username) {
        try {
            return ResponseEntity.ok().body(cartService.RemoveProductFromCart(product_id,username));
        } catch (Exception e) {
            log.info(e.getMessage());
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}
