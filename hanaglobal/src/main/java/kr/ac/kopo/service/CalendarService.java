package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.CalendarDAO;

@Service
public class CalendarService {

	@Autowired
	private CalendarDAO calendarDAO;

	public List<Map<String, Object>> calendarList(String id) {
		List<Map<String, Object>> calendarList = calendarDAO.calendarList(id);
		return calendarList;
	}

	public void insertAll(Map<String, Object> calendarMap) {
		calendarDAO.insertAll(calendarMap);
	}

}
