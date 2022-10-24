package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.BoardDAO;


	
	@Service
	public class BoardServiceImpl implements BoardService {

		@Autowired
		private BoardDAO boardDAO;
		
		
		@Override
		public List<Map<String,Object>> getAllBoard(){
			
			List<Map<String,Object>> list = boardDAO.selectAll();
			
			return list;
		}

		/*
		 * @Override public List<BoardVO> getSelectBoard() { // TODO Auto-generated
		 * method stub return null; }
		 * 
		 * @Override public List<BoardVO> InsertBoard() { // TODO Auto-generated method
		 * stub return null; }
		 * 
		 * @Override public List<BoardVO> UpdateBoard() { // TODO Auto-generated method
		 * stub return null; }
		 */
		
	}

