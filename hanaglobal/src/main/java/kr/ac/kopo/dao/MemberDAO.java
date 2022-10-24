package kr.ac.kopo.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.vo.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public MemberVO selectUser(MemberVO member) {
		MemberVO authMember = sqlSessionTemplate.selectOne("member.dao.memberDAO.selectUser", member);
		return authMember;
	}

	public void memberJoinMethod(MemberVO newmember) {
		System.out.println("dao 확인" + newmember);
		sqlSessionTemplate.insert("member.dao.memberDAO.memberJoinMethod", newmember);
	}

	public MemberVO kakaoLogin(MemberVO member) {
		MemberVO authMember = sqlSessionTemplate.selectOne("member.dao.memberDAO.kakaoLogin", member);
		return authMember;
	}
}
