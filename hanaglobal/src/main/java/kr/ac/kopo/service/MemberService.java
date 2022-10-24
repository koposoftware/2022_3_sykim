package kr.ac.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.dao.MemberDAO;
import kr.ac.kopo.vo.MemberVO;



@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO login(MemberVO member) {
		MemberVO authMember = memberDAO.selectUser(member);
		return authMember;
	}
	
	public MemberVO kakaoLogin(MemberVO member) {
		MemberVO authMember = memberDAO.kakaoLogin(member);
		return authMember;
	}
	

	public void addMember(MemberVO newmember) {
		memberDAO.memberJoinMethod(newmember);
		}
	
	
}
