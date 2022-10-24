package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.ac.kopo.vo.AccountVO;
import kr.ac.kopo.vo.ExchangeVO;

@Mapper
public interface ExchangeDAO {

	public List<AccountVO> selectAll(String id);

	public void insertAll(ExchangeVO exvo);

	public void deleteAll();

	public void updateBalance(@Param("accountNo") String accountNo, @Param("balance") float balance);

	public void insertTransaction(Map<String, Object> exchangeResultList);

	public void insertTargeted(Map<String, Object> targetedtrans);

	public List<Map<String, Object>> selectTargetedtransaction(String id);

	public List<Map<String, Object>> selectTrans(String id);

	public Map<String, Object> selectbuybasicrate();

	public void targetExchange(Map<String, Object> targetedtrans);

	public void updatestatus(Map<String, Object> targetedtrans, String id);

	public List<Map<String, Object>> selectCountryChart(String id);

	public List<Map<String, Object>> selectexchangerate();

	public void tagetedRate(Map<String, Object> targetedMap);

	public String getPhoneNum(String memberID);
}
