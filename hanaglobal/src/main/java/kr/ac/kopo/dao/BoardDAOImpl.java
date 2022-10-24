package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class BoardDAOImpl implements BoardDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<Map<String, Object>> selectAll() {

		List<Map<String, Object>> list = sqlSessionTemplate.selectList("kr.ac.kopo.dao.BoardDAO");
		return list;
	}

}
