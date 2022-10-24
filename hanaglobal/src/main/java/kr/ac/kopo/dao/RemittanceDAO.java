package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RemittanceDAO {

	public List<Map<String, Object>> selectAll(String id);

	public List<Map<String, Object>> selectcommission();

	public List<Map<String, Object>> selectRegister();

	public void registerInformation(Map<String, Object> remittanceMap);

	public void transfer1(Map<String, Object> transMap);

	public void transfer2();

	public List<Map<String, Object>> selectTrans(String id);

	public List<Map<String, Object>> selectTransaction(String id);

	public List<Map<String, Object>> sum(String id);

	public List<Map<String, Object>> selectAllMember();

	public void updatestatus(Map<String, Object> update);

	public List<Map<String, Object>> selectStatus();

	// 송금예약거래내역
	public List<Map<String, Object>> scheduledremittance(String id);

	// 송금예약삽입
	public void insertscheduledrem(Map<String, Object> transMap);

}
