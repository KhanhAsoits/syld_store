package com.syld.store.services.card;

import com.syld.store.dto.CardDto;
import com.syld.store.interfaces.services.ICrudService;

import java.util.List;

public interface CardService extends ICrudService<CardDto, String> {

    List<CardDto> getAll();

    CardDto getById(String id);

}
