package com.syld.store.services.card;

import com.syld.store.dto.CardDto;
import com.syld.store.entities.Card;
import com.syld.store.entities.User;
import com.syld.store.repositories.CardRepository;
import com.syld.store.repositories.UserRepository;
import com.syld.store.services.user.UserService;
import com.syld.store.ultis.SlugGenerator;
import com.syld.store.ultis.Uploader;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class CardServiceIpm implements CardService {


    private final CardRepository cardRepository;

    private final UserRepository userRepository;
    final Uploader uploader = new Uploader();
    final ModelMapper modelMapper = new ModelMapper();

    private final String paypal = "/assets/uploads/banks/paypal.png";

    @Override
    public void save(CardDto entity) throws Exception {


        try {
            String filePath = uploader.upload(entity.getFile(), entity.getCard_brand());

            Card card = this.modelMapper.map(entity, Card.class);
            card.setId(UUID.randomUUID().toString());
            if (filePath != null) {
                card.setBrand_thumbnail(filePath);
            } else {
                card.setBrand_thumbnail(entity.getBrand_thumbnail());
            }
            cardRepository.save(card);
        } catch (Exception e) {
            log.info(e.getMessage());
            throw e;
        }
    }


    @Override
    public void update(CardDto entity) throws Exception {

        try {
            Card card = cardRepository.findById(entity.getId()).orElse(null);
            if (card != null) {
                String old_path = card.getBrand_thumbnail();
                BeanUtils.copyProperties(entity, card);
                if (!Objects.equals(entity.getFile().getOriginalFilename(), "")) {
                    String path = uploader.upload(entity.getFile(), entity.getCard_brand());
                    uploader.remove(card.getBrand_thumbnail());
                    card.setBrand_thumbnail(path);
                } else {
                    card.setBrand_thumbnail(old_path);
                }
                cardRepository.save(card);
            } else {
                throw new Exception("no card found !");
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
    }

    @Override
    public void remove(String Id) throws Exception {

        try {
            Card card = cardRepository.findById(Id).orElse(null);
            if (card != null) {
                cardRepository.delete(card);
            } else {
                throw new Exception("No Card Found");
            }
        } catch (Exception e) {
            log.info(e.getMessage());
            throw e;
        }
    }

    @Override
    public List<CardDto> getAll() {
        try {
            return cardRepository.findAll().stream().map(card -> modelMapper.map(card, CardDto.class)).toList();
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return null;
    }

    @Override
    public void save_custom(CardDto entity) {
        Card card = new Card();
        try {
            if (Objects.equals(entity.getBank_name(), "paypal")) {
                card.setBrand_thumbnail(this.paypal);
                card.setCard_brand("Paypal");
            }
            card.setCard_number(entity.getCard_number());
            card.setId(UUID.randomUUID().toString());
            cardRepository.save(card);
            Optional<Card> card_ = cardRepository.findById(card.getId());
            if (card_.isPresent()) {
                Optional<User> user = userRepository.findByEmail(entity.getUser_email());
                if (user.isPresent()) {
//                    user.get().setCard(card_.get());
                    userRepository.save(user.get());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public CardDto getById(String id) {
        try {
            Optional<Card> card = cardRepository.findById(id);
            if (card.isPresent()) {
                return modelMapper.map(card.get(), CardDto.class);
            }
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return null;
    }

    @Override
    public CardDto getByName(String card_brand) {
        Card card = cardRepository.findByCard_brand(card_brand);
        if(card != null) {
            return modelMapper.map(card, CardDto.class);
        }
        return null;
    }

    @Override
    public CardDto getByCard_Number(String card_number) {
        Card card = cardRepository.findByCard_number(card_number);
        if(card != null) {
            return modelMapper.map(card, CardDto.class);
        }
        return null;
    }
}
