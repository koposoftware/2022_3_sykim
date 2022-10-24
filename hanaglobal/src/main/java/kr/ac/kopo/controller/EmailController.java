package kr.ac.kopo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.service.EmailService;

@Controller
public class EmailController {

	@Autowired
	private EmailService emailService;

	@GetMapping("/mail/send")
	public String main() {
		return "mail/Mail";
	}

}
