package com.biz.home.vo;

public class UserInfoVO {
	private String userid; // 공인중개사 아이디
	private String password; // 비밀번호
	private String name; // 이름
	private String phone; // 핸드폰번호
	private String addr; // 주소
	private String email; // 이메일
	private int type; // 타입 0:일반고객 1:공인중개사
	private String mediation_num; // 공인중개사 등록번호
	private String register_num; // 사업자등록번호
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getMediation_num() {
		return mediation_num;
	}
	public void setMediation_num(String mediation_num) {
		this.mediation_num = mediation_num;
	}
	public String getRegister_num() {
		return register_num;
	}
	public void setRegister_num(String register_num) {
		this.register_num = register_num;
	}
	
	
}
