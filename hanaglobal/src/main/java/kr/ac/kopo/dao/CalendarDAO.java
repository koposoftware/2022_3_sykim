package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface CalendarDAO {

	public List<Map<String, Object>> calendarList(String id);

	public void insertAll(Map<String, Object> calendarMap);

}
