package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.service.CouponService;
import kr.ac.kopo.vo.CouponVO;

@Controller
public class CouponController {

	@Autowired
	private CouponService couponService;

	@GetMapping("/coupon")
	public String event() {
		return "coupon/coupon";
	}

	@PostMapping("/coupon/addCoupon")
	public String addCoupon(@Valid CouponVO couponVO) {
		System.out.println(couponVO);
		couponService.insert(couponVO);
		return "coupon/addCoupon";
	}

	@ResponseBody
	@GetMapping("/coupon/useCoupon")
	public List<Map<String, Object>> showCouponList(@RequestParam("id") String id) {
		System.out.println(id);
		List<Map<String, Object>> couponList = couponService.showCouponList(id);
		System.out.println("couponList" + couponList);
		return couponList;
	}

	static int no = 16;
	static char[] chs = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
			'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

	public static List<CouponVO> createCoupon() {

		Random rd = new Random();
		List<CouponVO> CouponList = new ArrayList<>();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < no; i++) {
			char ch = chs[rd.nextInt(chs.length)];
			sb.append(ch);
		}
		// return sb.toString();
		return CouponList;

	}

}
