package com.syld.store.services.search;

import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

public interface SearchService<E> {
    Page<E> search(String keywords, int page, int limit);
}
