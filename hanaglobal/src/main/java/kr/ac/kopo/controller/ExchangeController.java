package kr.ac.kopo.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.ExchangeService;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.ExchangeVO;
import kr.ac.kopo.vo.MemberVO;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class ExchangeController {

	@Autowired
	private ExchangeService exchangeService;

	public List<ExchangeVO> exchangeList() {

		String url = "https://finance.naver.com/marketindex/exchangeList.naver";
		Document doc = null;

		List<ExchangeVO> exchangeList = new ArrayList<>();

		try {

			doc = Jsoup.connect(url).get(); 

		} catch (IOException e) {

			e.printStackTrace();

		}

		Elements element1 = doc.select("table tbody");
		Elements element2 = element1.select("tr");

		String[] a = null;

		for (Element element : element2) {
			int i = 0;
			a = element.text().split(" ");
			for (int j = 0; j < a.length; j++) {
				if (a[j].equals("N/A")) {
					a[j] = "0";
				}
			}
			ExchangeVO exvo = new ExchangeVO();
			if (a[2].equals("(100엔)") || a[2].equals("ZAR")) {
				exvo.setNationKr(a[i++] + a[i++] + a[i++]);
			} else {
				exvo.setNationKr(a[i++] + a[i++]);
			}
			exvo.setBuyBasicRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setCashBuyRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setCashSellRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setTransferSendRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setTransferReceiveRate(Float.parseFloat(a[i++].replace(",", "")));
			exvo.setUsdChangeRate(Float.parseFloat(a[i].replace(",", "")));
			exchangeList.add(exvo);

		}

		return exchangeList;

	}

	@GetMapping("/exchange")
	public String allExchange(HttpServletRequest request) {

		request.setAttribute("exchangelist", exchangeList());

		return "exchange/showExchange";
	}

	@GetMapping("/exchange/check")
	public static String checkTerms() {
		return "/exchange/checkTermsConditions";
	}

	@GetMapping("/exchange/doExchange")
	public String doExchange(HttpServletRequest request, Model model, HttpSession session) {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		List<AccountVO> list = exchangeService.selectAll(id);
		model.addAttribute("allaccount", list);

		request.setAttribute("exchangelist", exchangeList());
		return "/exchange/doExchange";
	}

	@GetMapping("/exchange/ResultOfExchange")
	public String result(Model model, HttpSession session) {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();
		List<Map<String, Object>> chartCountry = exchangeService.selectCountryChart(id);
		model.addAttribute("chartCountry", chartCountry);
		System.out.println("chartCountry가지고오닝?" + chartCountry);
		return "/exchange/showResultOfExchange";
	}

	@PostMapping("/exchange/ResultOfExchange")
	public String resultOfExchange(Model model, HttpSession session, HttpServletRequest req) {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		List<AccountVO> list = exchangeService.selectAll(id);
		model.addAttribute("allaccount", list);
		System.out.println("현재 계좌 소지금액" + list.get(0).getBalance());

		Map<String, Object> exchangeResultList = new HashMap<>();
		String selectedAccount = req.getParameter("selectedAccount");
		float exchangePrice = Float.parseFloat(req.getParameter("exchangecharge"));
		float exchangePer = Float.parseFloat(req.getParameter("ex_per"));
		float R_exchangePer = Float.parseFloat(req.getParameter("R_ex_per"));
		String pickupDate = req.getParameter("pickupdate");
		String pickupPoint = req.getParameter("location");
		String currency = req.getParameter("currency");
		String forAmt_01 = req.getParameter("forAmt_01");
		float cashBuy = Float.parseFloat(req.getParameter("krwAmtTxt"));
		String preferential_fee = req.getParameter("preferentialAmount");

		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formatedNow = now.format(formatter);

		exchangeResultList.put("sn", 0);
		exchangeResultList.put("ApplicationDate", formatedNow);
		exchangeResultList.put("currency", currency);
		exchangeResultList.put("forAmt_01", forAmt_01);
		exchangeResultList.put("cashBuy", cashBuy);
		exchangeResultList.put("exchangePer", exchangePer);
		exchangeResultList.put("R_exchangePer", R_exchangePer);
		exchangeResultList.put("preferential_fee", preferential_fee);
		exchangeResultList.put("exchangePrice", exchangePrice);
		exchangeResultList.put("pickupDate", pickupDate);
		exchangeResultList.put("location", pickupPoint);
		exchangeResultList.put("selectedAccount", selectedAccount);
		exchangeResultList.put("targetedDate", 0);
		exchangeResultList.put("id", id);

		List<Map<String, Object>> chartCountry = exchangeService.selectCountryChart(id);
		model.addAttribute("chartCountry", chartCountry);
		System.out.println("chartCountry가지고오닝?" + chartCountry);

		exchangeService.insertTransaction(exchangeResultList);

		exchangeService.updateBalance(list.get(0).getAccountNo(), list.get(0).getBalance() - exchangePrice);

		session.setAttribute("exchangeResultList", exchangeResultList);

		return "/exchange/showResultOfExchange";
	}

	@ResponseBody
	@GetMapping("/showtranshistory")
	public List<Map<String, Object>> accounttables(HttpSession session) {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();
		List<Map<String, Object>> translist = exchangeService.selectTrans(id);
		return translist;

	}

	@GetMapping("/targetedExchange")
	public String targetedExchange(HttpServletRequest request, Model model, HttpSession session) {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		Map<String, Object> selectbuybasicrate = exchangeService.selectbuybasicrate();
		model.addAttribute("selectbuybasicrate", selectbuybasicrate);
		return "/exchange/targetedExchange";
	}

	@PostMapping("/exchange/ResultOfTargetedExchange")
	public ModelAndView resultOfTargetedExchange(Model model, HttpSession session, HttpServletRequest req)
			throws CoolsmsException {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		String targeted_no = req.getParameter("targeted_no");
		String currency = req.getParameter("currency");
		String CurrentRate = req.getParameter("CurrentRate");
		String TargetedRate = req.getParameter("TargetedRate");
		String chooseAccount = req.getParameter("chooseAccount");
		String phone = req.getParameter("phone");

		List<AccountVO> list = exchangeService.selectAll(id);
		model.addAttribute("allaccount", list);

		Map<String, Object> targetList = new HashMap<>();
		targetList.put("targeted_no", targeted_no);
		targetList.put("currency", currency);
		targetList.put("CurrentRate", CurrentRate);
		targetList.put("TargetedRate", TargetedRate);

		targetList.put("chooseAccount", chooseAccount);
		targetList.put("phone", phone);

		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formatedNow = now.format(formatter);

		Map<String, Object> targetedtrans = new HashMap<>();
		targetedtrans.put("targeted_no", targeted_no);
		targetedtrans.put("id", id);
		targetedtrans.put("currency", currency);
		targetedtrans.put("CurrentRate", CurrentRate);
		targetedtrans.put("TargetedRate", TargetedRate);

		targetedtrans.put("chooseAccount", chooseAccount);
		targetedtrans.put("phone", phone);

		exchangeService.inserttargetedtrans(targetedtrans);

		exchangeService.targetExchange(targetedtrans, id);

		ModelAndView mav = new ModelAndView("/exchange/showTargetTransHistory");

		mav.addObject("targetList", targetList);
		return mav;
	}

	@GetMapping("/target")
	public String account(Model model, HttpSession session) {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();
		List<Map<String, Object>> transaction = exchangeService.selectTargetedtransaction(id);
		List<Map<String, Object>> selectbuybasicrate1 = exchangeService.selectexchangerate();
		model.addAttribute("selectbuybasicrate1", selectbuybasicrate1);
		return "exchange/showTargetTransHistory";
	}

	@ResponseBody
	@GetMapping("/Targetedhistory")
	public List<Map<String, Object>> targettrans(HttpSession session) {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();
		List<Map<String, Object>> transaction = exchangeService.selectTargetedtransaction(id);
		return transaction;
	}

}
