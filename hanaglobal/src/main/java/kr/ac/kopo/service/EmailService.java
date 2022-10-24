package kr.ac.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import kr.ac.kopo.vo.EmailVO;

@Service
public class EmailService {
	@Autowired
    private JavaMailSender emailSender;
    
    public void sendSimpleMessage(EmailVO mailVO) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("skim24245@gmail.com");
        message.setTo(mailVO.getAddress());
        message.setSubject(mailVO.getTitle());
        message.setText(mailVO.getContent());
        emailSender.send(message);
    }
}
