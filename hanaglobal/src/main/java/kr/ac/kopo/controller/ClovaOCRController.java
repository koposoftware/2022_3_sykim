package kr.ac.kopo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.service.ClovaService;

@Controller
public class ClovaOCRController {
	@Autowired
	private ClovaService clovaService;

	@RequestMapping("/clova")
	public String myPage() {
		return "clova/ocr";
	}

	@ResponseBody
	@GetMapping("clovaOCR")
	public String clovaOCR() {
		String jsonData = clovaService.ClovaResponse();
		return jsonData;
	}

}
