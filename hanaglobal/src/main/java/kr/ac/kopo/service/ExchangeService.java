package kr.ac.kopo.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.ExchangeDAO;
import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.ExchangeVO;
import kr.ac.kopo.vo.SmsTargetedVO;
import kr.ac.kopo.vo.TargetedVO;
import net.nurigo.java_sdk.api.Message;

@Service
public class ExchangeService {

	private static final String TargetedRate = null;
	@Autowired
	private ExchangeDAO exchangeDAO;

	public List<AccountVO> selectAll(String id) {
		List<AccountVO> list = exchangeDAO.selectAll(id);
		return list;
	}

	public void insert(ExchangeVO exvo) {
		exchangeDAO.insertAll(exvo);
	}

	public void deleteAll() {
		exchangeDAO.deleteAll();
	}

	public void springSchedule() {
	
	}

	public void updateBalance(String AccountNo, float Balance) {
		exchangeDAO.updateBalance(AccountNo, Balance);
	}

	public void insertTransaction(Map<String, Object> exchangeResultList) {
		exchangeDAO.insertTransaction(exchangeResultList);
	}

	public void inserttargetedtrans(Map<String, Object> targetedtrans) {
		exchangeDAO.insertTargeted(targetedtrans);

	}


	public List<Map<String, Object>> selectTargetedtransaction(String id) {
		List<Map<String, Object>> Targetedtransaction = exchangeDAO.selectTargetedtransaction(id);
		return Targetedtransaction;
	}

	public List<Map<String, Object>> selectTrans(String id) {
		List<Map<String, Object>> list = exchangeDAO.selectTrans(id);
		return list;
	}

	public Map<String, Object> selectbuybasicrate() {
		Map<String, Object> list = exchangeDAO.selectbuybasicrate();
		return list;
	}

	public List<Map<String, Object>> selectCountryChart(String id) {
		List<Map<String, Object>> list = exchangeDAO.selectCountryChart(id);
		return list;
	}


	public List<Map<String, Object>> selectexchangerate() {
		List<Map<String, Object>> list = exchangeDAO.selectexchangerate();
		return list;
	}

	@Scheduled(cron = "0 * * * * *")
	public void tagetedRate() {
		Map<String, Object> targetedMap = new HashMap<>();

		List<TargetedVO> targetedList = new ArrayList<>();

		targetedMap.put("targetedList", targetedList);

		exchangeDAO.tagetedRate(targetedMap);

		List<TargetedVO> memberList = (List<TargetedVO>) targetedMap.get("targetedList");

		List<SmsTargetedVO> smsTargetedList = new ArrayList<>();

		for (int i = 0; i < memberList.size(); i++) {
			String id = memberList.get(i).getId();
			String targetedRate = memberList.get(i).getTargetedRate();
			String phoneNumber = exchangeDAO.getPhoneNum(id);
			SmsTargetedVO smsTargetedVO = new SmsTargetedVO();
			smsTargetedVO.setPhone(phoneNumber);
			smsTargetedVO.setTargetedRate(targetedRate);
			smsTargetedList.add(smsTargetedVO);
		}
		System.out.println(smsTargetedList);
		String api_key = "";
		String api_secret = "";
		Message coolsms = new Message(api_key, api_secret);

		for (int i = 0; i < smsTargetedList.size(); i++) {
			HashMap<String, String> set = new HashMap<String, String>();
			set.put("to", smsTargetedList.get(i).getPhone()); 
			set.put("from", ""); 
			set.put("text", ""); 
			set.put("type", ""); 

			try {
				coolsms.send(set);
			} catch (Exception e) {
				System.out.println(e);
			}

		}

	}
}
