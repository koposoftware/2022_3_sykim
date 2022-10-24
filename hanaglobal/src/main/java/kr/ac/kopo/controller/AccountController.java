package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.service.RemittanceSerivce;
import kr.ac.kopo.vo.MemberVO;

@Controller
public class AccountController {

	@Autowired
	private RemittanceSerivce remittanceService;

	@GetMapping("/account")
	public String Myaccount() {
		return "/account/showMyAccount";
	}

	@GetMapping("/analysis")
	public String test() {

		return "/include/test";
	}

	@GetMapping("/accountrem")
	public String Myaccount(Model model, HttpSession session) {

		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		List<Map<String, Object>> list = remittanceService.selectAll(id);

		List<Map<String, Object>> translist = remittanceService.selectTrans(id); 

		List<Map<String, Object>> sum = remittanceService.selectSum(id); 

		model.addAttribute("allaccount", list);
		model.addAttribute("translist", translist);
		model.addAttribute("sum", sum);

		System.out.println(list.get(0));
		System.out.println("게좌찍히나" + list);
		System.out.println("잔액찍히나" + sum);
		return "/account/checkAccount";
	}

}
