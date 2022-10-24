package kr.ac.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.service.ChartService;
import kr.ac.kopo.vo.ChartVO;

@Controller
public class ChartController {

	@Autowired
	private ChartService chartService;

	@RequestMapping("/chart")
	public String myPage() {
		return "exchange/showChart";
	}

	@ResponseBody
	@GetMapping("ex_rate")
	public List<ChartVO> chart() {
		List<ChartVO> list = chartService.selectRate();
		return list;
	}

	// 3개월전
	@ResponseBody
	@GetMapping("ex_otherrate")
	public List<ChartVO> anotherChart() {
		List<ChartVO> list = chartService.selectAnotherRate();
		return list;
	}

}
