package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.service.BoardService;
import kr.ac.kopo.vo.BoardVO;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/board")
	public String allboard(HttpServletRequest request) { 
		
		List<BoardVO> boardlist = new ArrayList<>();
		//boardlist = boardService.getAllBoard();
		request.setAttribute("boardlist", boardlist);

		return "board/list";
		
	}
}
	
