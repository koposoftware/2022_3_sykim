package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

@Controller
public class QuestionController {

	@Autowired
	private BoardService boardService;

	@GetMapping("/question")
	public String question() {
		return "question/addQuestion";
	}

	@ResponseBody
	@GetMapping("/boardlist")
	public List<Map<String, Object>> selectAll(Model model, @ModelAttribute BoardVO boardVO) {

		List<Map<String, Object>> allboard = boardService.getAllBoard();

		model.addAttribute("allboard", allboard);
		System.out.println(allboard);
		return allboard;

	}
}
