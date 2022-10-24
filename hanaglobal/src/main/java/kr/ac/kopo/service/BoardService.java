package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.BoardDAO;
import kr.ac.kopo.vo.BoardVO;

public interface BoardService {

	List<Map<String, Object>> getAllBoard();

	List<BoardVO> getSelectBoard();

	List<BoardVO> InsertBoard();

	List<BoardVO> UpdateBoard();

}

@Service
public class BoardService {

	@Autowired
	private BoardDAO boardDao;

	public List<BoardVO> selectAll() {

		return boardDao.selectAll();
	}
}
