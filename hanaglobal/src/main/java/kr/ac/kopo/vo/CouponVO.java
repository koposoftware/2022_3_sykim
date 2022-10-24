package kr.ac.kopo.vo;

public class CouponVO {

	private String id;
	private String content;
	private int rate;
	
	
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public int getRate() {
		return rate;
	}


	public void setRate(int rate) {
		this.rate = rate;
	}


	@Override
	public String toString() {
		return "CouponVO [id=" + id + ", content=" + content + ", rate=" + rate + "]";
	}
	

	
}
