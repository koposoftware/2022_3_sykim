package kr.ac.kopo.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.RemittanceSerivce;
import kr.ac.kopo.vo.MemberVO;
import kr.ac.kopo.vo.RegisterInfoVO;
import kr.ac.kopo.vo.TransactionVO;

@Controller
public class RemittanceController {

	@Autowired
	private RemittanceSerivce remittanceService;

	@GetMapping("/register")
	public String register() {
		return "remittance/registerInformation";
	}

	@PostMapping("/resultOfRegister")
	public ModelAndView resultOfRegister(@ModelAttribute RegisterInfoVO info, HttpServletRequest req) {

		String engName = req.getParameter("engName");
		String overseas = req.getParameter("overseas");
		String domestic = req.getParameter("domestic");

		String under$5000 = req.getParameter("under$5000");
		String over$5000 = req.getParameter("over$5000");
		String expenses = req.getParameter("expenses");
		String expenses2 = req.getParameter("expenses2");

		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String engAddr = req.getParameter("engAddr");

		String receivedName = req.getParameter("receivedName");
		String receivedPhone = req.getParameter("receivedPhone");
		String receivedEmail = req.getParameter("receivedEmail");
		String receivedaddr1 = req.getParameter("receivedaddr1");
		String receivedaddr2 = req.getParameter("receivedaddr2");
		String chooseCurrency = req.getParameter("chooseCurrency");
		String bankCode = req.getParameter("bankCode");
		String swiftCode = req.getParameter("swiftCode");
		String receivedaccoutNo = req.getParameter("receivedaccoutNo");

		Map<String, Object> RegisterList = new HashMap<>();
		RegisterList.put("engName", engName);
		RegisterList.put("overseas", overseas);
		RegisterList.put("domestic", domestic);
		RegisterList.put("under$5000", under$5000);
		RegisterList.put("over$5000", over$5000);
		RegisterList.put("expenses", expenses);
		RegisterList.put("expenses2", expenses2);

		RegisterList.put("phone", phone);
		RegisterList.put("email", email);
		RegisterList.put("engAddr", engAddr);

		RegisterList.put("receivedName", receivedName);
		RegisterList.put("receivedPhone", receivedPhone);
		RegisterList.put("receivedEmail", receivedEmail);
		RegisterList.put("receivedaddr1", receivedaddr1);
		RegisterList.put("receivedaddr2", receivedaddr2);
		RegisterList.put("chooseCurrency", chooseCurrency);
		RegisterList.put("bankCode", bankCode);
		RegisterList.put("swiftCode", swiftCode);
		RegisterList.put("receivedaccoutNo", receivedaccoutNo);

		remittanceService.registerInformation(RegisterList);

		ModelAndView mav = new ModelAndView("/remittance/resultOfRegister");
		mav.addObject("RegisterList", RegisterList);

		mav.addObject("info", info);

		System.out.println(info);

		return mav;
	}

	@GetMapping("/remittance")
	public String Remittance(Model model, HttpSession session) {

		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		List<Map<String, Object>> list = remittanceService.selectAll(id);

		List<Map<String, Object>> registerlist = remittanceService.selectRegister();

		List<Map<String, Object>> translist = remittanceService.selectTrans(id);

		model.addAttribute("allaccount", list);
		model.addAttribute("registerlist", registerlist);
		model.addAttribute("translist", translist);

		System.out.println("allaccount가지고 오나" + list);
		System.out.println("registerlist가지고 오나" + registerlist);
		System.out.println(list.get(0));
		return "remittance/sendRemittance";
	}

	// 해외송금내역조회(db 삽입)
	@PostMapping("/resultOfRemittance")
	public ModelAndView ResultOfRemmittance(HttpServletRequest req, @ModelAttribute TransactionVO transaction,
			HttpSession httpSession, @RequestParam("uploadfile") MultipartFile[] multipartFiles) {
		String UPLOAD_PATH = "C:/springboot-workspace/hanaclub/src/main/resources/static/img_folder"; // 업로드 할 위치
		String chooseAccount = req.getParameter("chooseAccount");
		String under$5000 = req.getParameter("under$5000");
		String over$5000 = req.getParameter("over$5000");
		String expenses = req.getParameter("expenses");
		String location = req.getParameter("location");

		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String engAddr = req.getParameter("engAddr");

		String currency = req.getParameter("currency");
		String amount = req.getParameter("amount");
		String receivedName = req.getParameter("receivedName");
		String bankCode = req.getParameter("bankCode");
		String receivedAddress = req.getParameter("receivedAddress");
		String receivedbank = req.getParameter("receivedbank");
		String receivedaccoutNo = req.getParameter("receivedaccoutNo");
		String swiftCode = req.getParameter("swiftCode");
		String chooseCurrency = req.getParameter("chooseCurrency");
		String remCharge = req.getParameter("remCharge");
		String cableCharges = req.getParameter("cableCharges");
		String receivedEmail = req.getParameter("receivedEmail");
		String finalamount = req.getParameter("finalamount");
		String targeteddate = req.getParameter("targeteddate");

		Map<String, Object> transactionList = new HashMap<>();
		transactionList.put("chooseAccount", chooseAccount);
		transactionList.put("location", location);
		transactionList.put("under$5000", under$5000);
		transactionList.put("over$5000", over$5000);
		transactionList.put("expenses", expenses);
		transactionList.put("phone", phone);
		transactionList.put("email", email);
		transactionList.put("engAddr", engAddr);
		transactionList.put("currency", currency);
		transactionList.put("bankCode", bankCode);
		transactionList.put("receivedName", receivedName);
		transactionList.put("receivedAddress", receivedAddress);
		transactionList.put("receivedbank", receivedbank);
		transactionList.put("receivedaccoutNo", receivedaccoutNo);
		transactionList.put("chooseCurrency", chooseCurrency);
		transactionList.put("remCharge", remCharge);
		transactionList.put("swiftCode", swiftCode);
		transactionList.put("cableCharges", cableCharges);
		transactionList.put("amount", amount);
		transactionList.put("receivedEmail", receivedEmail);
		transactionList.put("finalamount", finalamount);
		transactionList.put("targeteddate", targeteddate);

		ModelAndView mav = new ModelAndView("/remittance/resultOfRemittance");

		try {

			for (int i = 0; i < multipartFiles.length; i++) {
				MultipartFile file = multipartFiles[i];

				String fileId = (new Date().getTime()) + "" + (new Random().ints(1000, 9999).findAny().getAsInt()); // 현재
																													// 날짜와
																													// 랜덤
																													// 정수값으로
																													// 새로운
																													// 파일명
																													// 만들기
				String originName = file.getOriginalFilename(); // ex) 파일.jpg
				String fileExtension = originName.substring(originName.lastIndexOf(".") + 1); // ex) jpg
				originName = originName.substring(0, originName.lastIndexOf(".")); // ex) 파일
				long fileSize = file.getSize(); // 파일 사이즈

				File fileSave = new File(UPLOAD_PATH, fileId + "." + fileExtension); // ex) fileId.jpg
				if (!fileSave.exists()) { // 폴더가 없을 경우 폴더 만들기
					fileSave.mkdirs();
				}
				String url = "/img_folder/" + fileId + "." + fileExtension;
				file.transferTo(fileSave); // fileSave의 형태로 파일 저장

				System.out.println("fileId= " + fileId);
				System.out.println("originName= " + originName);
				System.out.println("fileExtension= " + fileExtension);
				System.out.println("fileSize= " + fileSize);

				Map<String, Object> transMap = new HashMap<>();

				MemberVO memberVO = (MemberVO) httpSession.getAttribute("loginVO");
				String senderName = memberVO.getEngName();

				transMap.put("krwAccount", chooseAccount);
				transMap.put("receivedAccount", receivedaccoutNo);
				transMap.put("senderName", senderName);
				transMap.put("receivedName", receivedName);
				transMap.put("currency", chooseCurrency);
				transMap.put("transAmount", finalamount);
				transMap.put("url", url);
//             transMap.put("targeteddate", targeteddate);

				remittanceService.transfer1(transMap);

				System.out.println("transMap 완료 " + transMap);
				mav.addObject("transactionList", transactionList);

			}
		} catch (IOException e) {
			System.out.println("파일 잘된다");
		}
		return mav;
	}

	@ResponseBody
	@GetMapping("/remittance/getCommsion")
	public List<Map<String, Object>> getCommission() {
		List<Map<String, Object>> commission = remittanceService.selectcommission();

		System.out.println("commission값 들어오나" + commission);
		return commission;

	}

	@GetMapping("/showremtrans")
	public String account(Model model, HttpSession session) {

		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		List<Map<String, Object>> list = remittanceService.selectAll(id);
		model.addAttribute("allaccount", list);

		List<Map<String, Object>> translist = remittanceService.selectTrans(id);
		model.addAttribute("translist", translist);

		List<Map<String, Object>> transaction = remittanceService.selectTransaction(id);
		model.addAttribute("transaction", transaction);

		System.out.println(list.get(0));
		System.out.println("송금거래내역 가지고 오나" + transaction);
		return "remittance/showRemittanceAccount";
	}

	@ResponseBody
	@GetMapping("/showAccounttables")
	public List<Map<String, Object>> accounttables(HttpSession session) {

		String id = ((MemberVO) session.getAttribute("loginVO")).getId();
		List<Map<String, Object>> list = remittanceService.selectAll(id);

		List<Map<String, Object>> translist = remittanceService.selectTrans(id);

		List<Map<String, Object>> transaction = remittanceService.selectTransaction(id);

		System.out.println(list.get(0));
		System.out.println("송금거래내역 가지고 오나" + transaction);
		return transaction;
	}

	@GetMapping("/reserve")
	public String getRegister(Model model, HttpSession session) {
		String id = ((MemberVO) session.getAttribute("loginVO")).getId();
		List<Map<String, Object>> list = remittanceService.selectAll(id);
		model.addAttribute("allaccount", list);
		return "remittance/reserveRem";
	}

	@GetMapping("/showscheduledremtrans2")
	public String remaccount(Model model, HttpSession session) {

		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		return "remittance/showScheduledRemittance";
	}

	@ResponseBody
	@GetMapping("/showscheduledremtrans")
	public List<Map<String, Object>> scheduledtrans(HttpSession session) {

		String id = ((MemberVO) session.getAttribute("loginVO")).getId();

		List<Map<String, Object>> transaction = remittanceService.scheduledremittance(id);

		System.out.println("예약송금거래내역 가지고 오나" + transaction);
		return transaction;
	}

	@ResponseBody
	@GetMapping("/selectRegister")
	public List<Map<String, Object>> selectRegister(Model model, HttpSession session) {
		System.out.println("hihi");

		List<Map<String, Object>> registerlist = remittanceService.selectRegister();
		System.out.println("registerlist가지고오나" + registerlist);

		model.addAttribute("registerlist", registerlist);
		return registerlist;
	}

	@PostMapping("/resultOfReserveRemittance")
	public ModelAndView ResultOfreserveRemmittance(HttpServletRequest req, @ModelAttribute TransactionVO transaction,
			HttpSession httpSession) {

		String id = ((MemberVO) httpSession.getAttribute("loginVO")).getId();
		String targeteddate = req.getParameter("targeteddate");
		String time = req.getParameter("time");
		String chooseAccount = req.getParameter("chooseAccount");
		String under$5000 = req.getParameter("under$5000");
		String over$5000 = req.getParameter("over$5000");
		String expenses = req.getParameter("expenses");

		String phone = req.getParameter("phone1");
		String email = req.getParameter("email1");
		String engAddr = req.getParameter("engAddr1");

		String currency = req.getParameter("currency");
		String amount = req.getParameter("amount");
		String receivedName = req.getParameter("receivedName1");
		String bankCode = req.getParameter("bankCode1");
		String receivedAddress = req.getParameter("receivedAddress1");
		String receivedbank = req.getParameter("receivedbank");
		String receivedaccoutNo = req.getParameter("receivedAccountNo1");
		String swiftCode = req.getParameter("swiftCode1");
		String chooseCurrency = req.getParameter("choosecurrency1");
		String remCharge = req.getParameter("remCharge");
		String cableCharges = req.getParameter("cableCharges");
		String receivedEmail = req.getParameter("receivedEmail1");
		String finalamount = req.getParameter("finalamount");

		Map<String, Object> transactionList = new HashMap<>();
		transactionList.put("targeteddate", targeteddate);
		transactionList.put("time", time);
		transactionList.put("chooseAccount", chooseAccount);
		transactionList.put("under$5000", under$5000);
		transactionList.put("over$5000", over$5000);
		transactionList.put("expenses", expenses);
		transactionList.put("phone", phone);
		transactionList.put("email", email);
		transactionList.put("engAddr", engAddr);
		transactionList.put("currency", currency);
		transactionList.put("bankCode", bankCode);
		transactionList.put("receivedName", receivedName);
		transactionList.put("receivedAddress", receivedAddress);
		transactionList.put("receivedbank", receivedbank);
		transactionList.put("receivedaccoutNo", receivedaccoutNo);
		transactionList.put("chooseCurrency", chooseCurrency);
		transactionList.put("remCharge", remCharge);
		transactionList.put("swiftCode", swiftCode);
		transactionList.put("cableCharges", cableCharges);
		transactionList.put("amount", amount);
		transactionList.put("receivedEmail", receivedEmail);
		transactionList.put("finalamount", finalamount);

		Map<String, Object> transMap = new HashMap<>();

		MemberVO memberVO = (MemberVO) httpSession.getAttribute("loginVO");
		String senderName = memberVO.getEngName();
		transMap.put("id", id);
		transMap.put("targeteddate", targeteddate);
		transMap.put("time", time);
		transMap.put("krwAccount", chooseAccount);
		transMap.put("receivedAccount", receivedaccoutNo);
		transMap.put("senderName", senderName);
		transMap.put("receivedName", receivedName);
		transMap.put("currency", chooseCurrency);
		transMap.put("transAmount", finalamount);
		transMap.put("targeteddate", targeteddate);

		remittanceService.insertscheduledrem(transMap);

		ModelAndView mav = new ModelAndView("/remittance/resultOfScheduledRemittance");
		mav.addObject("transactionList", transactionList);
		return mav;
	}

}
