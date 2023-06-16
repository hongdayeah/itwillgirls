package kr.co.itwill.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.itwill.member.MemberDTO;

@Mapper
public interface MemberMapper {
	
	//회원가입
	public void memberJoin(MemberDTO dto);
	
	/*
	public void memberJoin(Map<String, Object> map);
	*/
	
	//아이디 중복확인
	public int idCheck(String p_id);
	
	//로그인
	public MemberDTO login(MemberDTO dto);
	
}//interface end
