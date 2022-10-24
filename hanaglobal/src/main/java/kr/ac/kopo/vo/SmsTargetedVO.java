package kr.ac.kopo.vo;

public class SmsTargetedVO {
	private String targetedRate;
	private String phone;
	public String getTargetedRate() {
		return targetedRate;
	}
	public void setTargetedRate(String targetedRate) {
		this.targetedRate = targetedRate;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "SmsTargetedVO [targetedRate=" + targetedRate + ", phone=" + phone + "]";
	}
}
