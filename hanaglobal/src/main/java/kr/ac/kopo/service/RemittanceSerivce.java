package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.RemittanceDAO;

@Service
public class RemittanceSerivce {

	@Autowired
	private RemittanceDAO remittanceDAO;

	public List<Map<String, Object>> selectAll(String id) {
		List<Map<String, Object>> list = remittanceDAO.selectAll(id);
		return list;
	}

	public List<Map<String, Object>> selectcommission() {
		List<Map<String, Object>> commission = remittanceDAO.selectcommission();

		return commission;
	}

	public List<Map<String, Object>> selectRegister() {
		List<Map<String, Object>> registerlist = remittanceDAO.selectRegister();
		return registerlist;
	}

	public void registerInformation(Map<String, Object> remittanceMap) {
		remittanceDAO.registerInformation(remittanceMap);

	}

	public void transfer1(Map<String, Object> transMap) {
		remittanceDAO.transfer1(transMap);
	}


	@Scheduled(cron = "0 0/1 1,9,12,15,18,21 * * MON-SUN")
	public void transfer() {
		remittanceDAO.transfer2();
	}

	public void insertscheduledrem(Map<String, Object> transMap) {
		remittanceDAO.insertscheduledrem(transMap);
	}

	public List<Map<String, Object>> selectTrans(String id) {
		List<Map<String, Object>> list = remittanceDAO.selectTrans(id);
		return list;
	}

	public List<Map<String, Object>> selectTransaction(String id) {
		List<Map<String, Object>> transaction = remittanceDAO.selectTransaction(id);
		return transaction;
	}

	public List<Map<String, Object>> selectSum(String id) {
		List<Map<String, Object>> sum = remittanceDAO.sum(id);
		return sum;
	}

	public List<Map<String, Object>> selectAllMember() {
		List<Map<String, Object>> transaction = remittanceDAO.selectAllMember();
		return transaction;
	}

	public void updatestatus(Map<String, Object> update) {
		remittanceDAO.updatestatus(update);

	}

	public List<Map<String, Object>> selectStatus() {
		List<Map<String, Object>> statusList = remittanceDAO.selectStatus();
		return statusList;
	}
	public List<Map<String, Object>> scheduledremittance(String id) {
		List<Map<String, Object>> trans = remittanceDAO.scheduledremittance(id);
		return trans;
	}

}

