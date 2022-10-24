package kr.ac.kopo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.ChartDAO;
import kr.ac.kopo.vo.ChartVO;

@Service
public class ChartService {


	@Autowired
	private ChartDAO chartDAO;

	
	public List<ChartVO> selectRate() {
		
		List<ChartVO> list = new ArrayList<>();
		list = chartDAO.selectRate();
		return list;
	}
	
	public List<ChartVO> selectAnotherRate() {
		
		List<ChartVO> list = new ArrayList<>();
		list = chartDAO.selectAnotherRate();
		return list;
	}
}
