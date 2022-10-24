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

}

