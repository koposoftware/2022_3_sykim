package kr.ac.kopo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.service.CalendarService;
import kr.ac.kopo.service.EmailService;
import kr.ac.kopo.vo.CalendarVO;
import kr.ac.kopo.vo.EmailVO;
import kr.ac.kopo.vo.MemberVO;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
public class CalendarController {

	@Autowired
	private CalendarService calendarService;

	@Autowired
	private EmailService emailService;

	@RequestMapping(value = "/calendar", method = RequestMethod.GET)
	public String calendarList(HttpServletRequest req, Model model, HttpSession session,
			@ModelAttribute MemberVO member, CalendarVO calendar) {

		System.out.println("flag");

		return "calendar/calendar";
	}

	@ResponseBody
	@GetMapping("calendar/chart")
	public List<Map<String, Object>> calendarList2(Model model, HttpSession session) {

		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		String id = memberVO.getId();

		List<Map<String, Object>> calendarList = calendarService.calendarList(id);

		model.addAttribute("calendarList", calendarList);
		System.out.println("calendarlist : " + calendarList);

		return calendarList;
	}

	@ResponseBody
	@PostMapping("calendar/chart")
	public void calendarListresult(HttpSession session, HttpServletRequest req) {

		Map<String, Object> calendrMap = new HashMap<>();

		MemberVO memberVO = (MemberVO) session.getAttribute("loginVO");
		String id = memberVO.getId();
		String title = req.getParameter("calendar_content");
		String start1 = req.getParameter("calendar_start_date");
		String end1 = req.getParameter("calendar_end_date");

		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		Date now = new Date();

		String nowTime1 = sdf1.format(now);

		String currentTime = nowTime1.substring(10);

		System.out.println(currentTime);

		start1 = start1 + currentTime;
		end1 = end1 + currentTime;

		System.out.println("title" + title);
		System.out.println("id" + id);
		System.out.println("start1" + start1);
		System.out.println("end1 들어오나?" + end1);

		calendrMap.put("id", id);
		calendrMap.put("title", title);
		calendrMap.put("start1", start1);
		calendrMap.put("end1", end1);

		calendarService.insertAll(calendrMap);

	}

	@PostMapping("/mail/send")
	public String sendMail2(EmailVO emailVO) {
		emailService.sendSimpleMessage(emailVO);
		System.out.println("메일 전송 완료");
		return "mail/afterMail";
	}

	@ResponseBody
	@PostMapping("/sendsms")
	public String sendSms1(@RequestParam(value = "phone") String phone) throws CoolsmsException {
		System.out.println("phone" + phone);
		String api_key = "NCSFFFSFY75VOGJA";
		String api_secret = "UAD9YJVOI0NNTGZEVU6CAFFAZI8Q3NBX";
		Message coolsms = new Message(api_key, api_secret);

		HashMap<String, String> set = new HashMap<String, String>();
		set.put("to", "01086396771"); // 수신번호
		set.put("from", "01086396771"); // 발신번호
		set.put("text", "목표환율에 도달했습니다"); // 문자내용
		set.put("type", "sms"); // 문자 타입

		coolsms.send(set);
		return "성공";
	}

}
