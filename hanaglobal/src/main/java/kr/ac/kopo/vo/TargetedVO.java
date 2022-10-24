package kr.ac.kopo.vo;

public class TargetedVO {
	private String id;
	private String targetedRate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTargetedRate() {
		return targetedRate;
	}
	public void setTargetedRate(String targetedRate) {
		this.targetedRate = targetedRate;
	}
	@Override
	public String toString() {
		return "TargetedVO [id=" + id + ", targetedRate=" + targetedRate + "]";
	}	
}
