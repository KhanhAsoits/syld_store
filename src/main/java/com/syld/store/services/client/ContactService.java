package com.syld.store.services.client;

import com.syld.store.controller.ContactController;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class ContactService {

    public ContactController getData() {
        try {

        }catch (Exception e) {
            e.getMessage();
        }
        return null;
    }
}
