package kr.ac.kopo.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.ac.kopo.vo.MemberVO;

public class Logininterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("prehandler동작");
		System.out.println("handler : " + handler);

		System.out.println("contextPath : " + request.getContextPath());
		System.out.println("uri  " + request.getRequestURI());
		System.out.println("queryString " + request.getQueryString());

		String dest = request.getRequestURI();
		dest = dest.substring(request.getContextPath().length());

		HttpSession session = request.getSession();
		MemberVO loginVO = (MemberVO) session.getAttribute("loginVO");

		if (loginVO == null) {

			response.sendRedirect(request.getContextPath() + "/login");
			return false;
		} else {

			return true;
		}
	}

}
