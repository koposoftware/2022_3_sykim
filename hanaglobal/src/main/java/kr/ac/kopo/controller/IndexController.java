package kr.ac.kopo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.ExchangeService;
import kr.ac.kopo.service.RemittanceSerivce;

@Controller
public class IndexController {

	@Autowired
	MessageSource messageSource;

	@Autowired
	LocaleResolver localeResolver;

	@Autowired
	private ExchangeService exchangeService;

	@Autowired
	private RemittanceSerivce remittanceService;

	@GetMapping("/")
	public String index(Locale locale, HttpServletRequest request, Model model) {

		model.addAttribute("clientLocale", locale);
		model.addAttribute("sessionLocale", localeResolver.resolveLocale(request));
		model.addAttribute("siteCount", messageSource.getMessage("msg.first", null, locale));

		return "index";
	}

	@GetMapping("/admin")
	public String test2(Model model, HttpSession session) {

		List<Map<String, Object>> transaction = remittanceService.selectAllMember();
		model.addAttribute("transaction", transaction);

		Map<String, Object> selectbuybasicrate = exchangeService.selectbuybasicrate();
		model.addAttribute("selectbuybasicrate", selectbuybasicrate);

		List<Map<String, Object>> selectbuybasicrate1 = exchangeService.selectexchangerate();
		System.out.println("관리자 환율 찍히나" + selectbuybasicrate1);
		model.addAttribute("selectbuybasicrate1", selectbuybasicrate1);

		return "/admin/main";
	}

	@GetMapping("/admin/mail")
	public String mail() {
		return "/admin/mail";
	}

	@PostMapping("/update")
	public ModelAndView update(Model model, HttpServletRequest req) {

		ModelAndView mav = new ModelAndView("/admin/main");
		String trans_no = req.getParameter("trans_no");
		System.out.println("trans_no찍히나요" + trans_no);
		String status = req.getParameter("status");

		Map<String, Object> update = new HashMap<>();

		update.put("trans_no", trans_no);
		update.put("status", status);

		remittanceService.updatestatus(update);

		List<Map<String, Object>> transaction = remittanceService.selectAllMember();

		mav.addObject("transaction", transaction);

		return mav;
	}

}
