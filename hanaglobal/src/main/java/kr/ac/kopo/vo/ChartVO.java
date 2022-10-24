package kr.ac.kopo.vo;



public class ChartVO {

	private String rate_date;
	private String rate;
	
	public String getRate_date() {
		return rate_date;
	}
	public void setRate_date(String rate_date) {
		this.rate_date = rate_date;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	
	@Override
	public String toString() {
		return "RateVO [rate_date=" + rate_date + ", rate=" + rate + "]";
	}
	
}
