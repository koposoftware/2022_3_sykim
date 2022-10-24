package kr.ac.kopo.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.vo.CouponVO;

@Repository
public class CouponDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insert(CouponVO couponVO) {
		sqlSessionTemplate.insert("kr.ac.kopo.dao.CouponDAO.insertCoupon", couponVO);
	}

	// 조회
	public List<Map<String, Object>> showCouponList(String id) {
		System.out.println("id들어오나 dao" + id);
		List<Map<String, Object>> couponList = sqlSessionTemplate.selectList("kr.ac.kopo.dao.CouponDAO.showCouponList",
				id);
		System.out.println("dao에서 확인하자 couponList" + couponList);
		return couponList;
	}

//@Autowired
//	private SqlSessionTemplate sqlSessionTemplate;
//	
//    //1. 쿠폰 전체 개수 조회
//    public int getCouponCnt() throws Exception;
//   	
//    
//
//    //2. 쿠폰 리스트 조회
//    public List<ResCouponList> selectCouponLists(Map<String, Object> paramMap) throws Exception{
//    	List<CouponVO> list = new ArrayList<>();
//		list = sqlSessionTemplate.selectList("kr.ac.kopo.dao.CouponDAO.selectCouponLists", paramMap);
//		return list;
//    }
//

//    public void insertCoupon(Map<String, Object> paramMap) throws Exception;
//    	
//
//    
//    //4. 랜덤 쿠폰 번호 생성
//    public String getCouponNo() throws Exception;

}

//public String makeCouponNum(String userID) {

//      String accountNum = "";
//      Random r = new Random();
//      String randomNum1= Integer.toString(r.nextInt(1000)+1000);
//      String randomNum2= Integer.toString(r.nextInt(1000)+1000);
//      
//      return "001-"+randomNum1+"-"+randomNum2;
//
