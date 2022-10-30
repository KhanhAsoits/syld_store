package com.syld.store.services.mail;

import com.syld.store.dto.MailDetail;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public interface MailService {

    boolean sendSimpleMail(MailDetail mailDetail);

    boolean sendAttachment(MailDetail mailDetail);

}
