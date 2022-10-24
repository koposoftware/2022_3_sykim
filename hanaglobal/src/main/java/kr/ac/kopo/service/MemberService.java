package kr.ac.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.vo.MemberVO;



@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	//로그인
	public MemberVO login(MemberVO member) {//form에서 입력받은 memberVO를 
		MemberVO authMember = memberDAO.selectUser(member);
		return authMember;
	}
	
	public MemberVO kakaoLogin(MemberVO member) {
		MemberVO authMember = memberDAO.kakaoLogin(member);
		return authMember;
	}
	
	// 회원가입
	public void addMember(MemberVO newmember) {
		memberDAO.memberJoinMethod(newmember);
		}
	
	
}
