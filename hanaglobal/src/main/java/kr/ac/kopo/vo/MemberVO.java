package kr.ac.kopo.vo;

public class MemberVO {

	//@NotEmpty(message="필수항목입니다")
	private String id;
	//@NotEmpty(message="필수항목입니다")
	private String name;
	//@NotEmpty(message="필수항목입니다")
	private String password;
	private String addr1;
	private String addr2;
	private String email;
	private String phone;
	private String engName;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEngName() {
		return engName;
	}
	public void setEngName(String engName) {
		this.engName = engName;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", password=" + password + ", addr1=" + addr1 + ", addr2="
				+ addr2 + ", email=" + email + ", phone=" + phone + ", engName=" + engName + "]";
	}
	

	

	
}
