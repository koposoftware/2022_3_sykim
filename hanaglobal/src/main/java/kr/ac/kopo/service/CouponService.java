package kr.ac.kopo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.CouponDAO;
import kr.ac.kopo.vo.CouponVO;

@Service
public class CouponService {

	@Autowired
	private CouponDAO couponDAO;

	// 쿠폰을 db에 저장
	public void insert(CouponVO couponVO) {
		couponDAO.insert(couponVO);
	}

	public List<Map<String, Object>> showCouponList(String id) {
		List<Map<String, Object>> couponList = couponDAO.showCouponList(id);
		return couponList;
	}

	// 1. 전체 쿠폰 개수 조회
//   int getCouponCnt() throws Exception;

	// 2. 쿠폰 리스트 조회
//    public List<ResCouponList> selectCouponList(int pageNo, int pageSize) throws Exception;

	// 3. 쿠폰 생성
//    void insertCoupon(Map<String, Object> paramMap) throws Exception;
}
