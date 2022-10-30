package com.syld.store.services.mail;

import com.syld.store.dto.MailDetail;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import javax.mail.internet.MimeMessage;
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
            MimeMessage mimeMessage = javaMailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, "utf-8");
            helper.setFrom(sender);
            helper.setTo(mailDetail.getTo());
            helper.setText(mailDetail.getMgs(), true);
            helper.setSubject(mailDetail.getSubject());
            javaMailSender.send(mimeMessage);
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
