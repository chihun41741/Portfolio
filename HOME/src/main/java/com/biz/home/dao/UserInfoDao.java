package com.biz.home.dao;

import com.biz.home.vo.UserInfoVO;

public interface UserInfoDao {
	
	public void UserInfoInsert(UserInfoVO vo); // 회원가입 시 DB에 입력값을 insert해서 저장하기 위해 사용 (회원가입)
	
	public int checkId(String userid); // 회원가입 시 ID 중복확인을 체크하기 위해 사용(회원가입)
	
	public int loginCheck(UserInfoVO vo); // 입력한 userid와 password가 db에 있는지 확인하기 위해 (로그인)
	
	public String GetType(UserInfoVO vo); // 0:일반고객 인지 1:공인중개사인지 확인할때 사용하려고

	public UserInfoVO selectOne(String user); //

	public void ClientUpdate(UserInfoVO vo); // 일반고객 정보를 수정할 떄 사용 (회원수정)
	
	public void AgentUpdate(UserInfoVO vo);	// 공인중개사 정보를 수정할 때 사용 (회원수정)
	
	public void deleteUser(UserInfoVO vo); // 일반고객 또는 공인중개사의 정보를 삭제할 때 사용 (회원탈퇴)

	public UserInfoVO UserInfoPassword(UserInfoVO vo);//회원정보 삭제시 아이디와 비밀번호를 확인하기 위해 만들었다.
	

}
