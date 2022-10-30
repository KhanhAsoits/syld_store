package com.syld.store.services.mail;

import com.syld.store.dto.MailDetail;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class MailServiceIpm implements MailService {
    private final JavaMailSender javaMailSender;
    @Value("${spring.mail.username}")
    private String sender;

    @Override
    public boolean sendSimpleMail(MailDetail mailDetail) {
        try {
            SimpleMailMessage msg = new SimpleMailMessage();
            msg.setFrom(sender);
            msg.setTo(mailDetail.getTo());
            msg.setText(mailDetail.getMgs());
            msg.setSubject(mailDetail.getSubject());
            javaMailSender.send(msg);
            return true;
        } catch (Exception e) {
            log.info(e.getMessage());
        }
        return false;
    }

    @Override
    public boolean sendAttachment(MailDetail mailDetail) {
        return false;
    }
}
