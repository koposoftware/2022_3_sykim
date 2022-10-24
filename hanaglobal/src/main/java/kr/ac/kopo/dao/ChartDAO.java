package kr.ac.kopo.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.vo.ChartVO;

@Repository
public class ChartDAO {


	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	public List<ChartVO> selectRate() {
		
		List<ChartVO> list = new ArrayList<>();
		list = sqlSessionTemplate.selectList("rate.dao.rateDAO.selectRate");
		return list;
	}

	

	public List<ChartVO> selectAnotherRate() {
		
		List<ChartVO> list = new ArrayList<>();
		list = sqlSessionTemplate.selectList("rate.dao.rateDAO.selectAnotherRate");
		return list;
	}
}
