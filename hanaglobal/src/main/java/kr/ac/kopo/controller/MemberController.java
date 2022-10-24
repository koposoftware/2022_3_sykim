package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.service.MemberService;
import kr.ac.kopo.vo.MemberVO;

@SessionAttributes("loginVO")
@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		request.setAttribute("memberVO", new MemberVO());
		return "member/login";
	}

	@PostMapping("/login")
	public String loginPost(@Valid MemberVO member, BindingResult result, Model model, HttpSession session) {
		if (result.hasErrors()) {
			return "member/login";
		} else {

			MemberVO memberVO = new MemberVO();
			MemberVO authMember = null;

			if (member.getEmail() == null) {
				memberVO.setId(member.getId());
				memberVO.setPassword(member.getPassword());
				authMember = memberService.login(memberVO);
			} else {
				memberVO.setEmail(member.getEmail());
				authMember = memberService.kakaoLogin(memberVO);
			}

			if (authMember == null) {

				model.addAttribute("loginmsg", "id와 password가 유효하지 않습니다.");

				return "member/login";
			} else {

				model.addAttribute("loginVO", authMember);
				String dest = (String) session.getAttribute("dest");
				if (dest == null) {
					return "redirect:/";
				} else {
					return "redirect:" + dest;

				}

			}
		}

	}

	@RequestMapping("/logout")
	public String logout(HttpSession session, SessionStatus sessionStatus) {

		sessionStatus.setComplete();
		session.invalidate();
		return "redirect:/";

	}

	@GetMapping("/join")
	public String join() {
		return "member/JoinForm";
	}

	@PostMapping("/joinprocess")
	public ModelAndView joinProcess(@ModelAttribute MemberVO newMember, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		memberService.addMember(newMember);
		System.out.println(newMember);
		mav.addObject("newmember", newMember);
		mav.setViewName("redirect:/");
		return mav;
	}
}