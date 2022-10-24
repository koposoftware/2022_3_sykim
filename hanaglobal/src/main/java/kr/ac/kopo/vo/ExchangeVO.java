package kr.ac.kopo.vo;

public class ExchangeVO {

   private String nationKr; //통화
   private float cashBuyRate; //현찰 사실 때 환율
   private float cashSellRate; //현찰 파실때 환율
   private float transferSendRate;//송금보낼때
   private float transferReceiveRate; //송금받을때
   private float buyBasicRate; //매매기준율
   private float usdChangeRate; //미화 환산율
   private String basicDate;
   
   public String getNationKr() {
	return nationKr;
}




public void setNationKr(String nationKr) {
	this.nationKr = nationKr;
}




public float getCashBuyRate() {
	return cashBuyRate;
}




public void setCashBuyRate(float cashBuyRate) {
	this.cashBuyRate = cashBuyRate;
}




public float getCashSellRate() {
	return cashSellRate;
}




public void setCashSellRate(float cashSellRate) {
	this.cashSellRate = cashSellRate;
}




public float getTransferSendRate() {
	return transferSendRate;
}




public void setTransferSendRate(float transferSendRate) {
	this.transferSendRate = transferSendRate;
}




public float getTransferReceiveRate() {
	return transferReceiveRate;
}




public void setTransferReceiveRate(float transferReceiveRate) {
	this.transferReceiveRate = transferReceiveRate;
}




public float getBuyBasicRate() {
	return buyBasicRate;
}




public void setBuyBasicRate(float buyBasicRate) {
	this.buyBasicRate = buyBasicRate;
}




public float getUsdChangeRate() {
	return usdChangeRate;
}




public void setUsdChangeRate(float usdChangeRate) {
	this.usdChangeRate = usdChangeRate;
}







public String getBasicDate() {
	return basicDate;
}




public void setBasicDate(String basicDate) {
	this.basicDate = basicDate;
}




@Override
public String toString() {
	return "ExchangeVO [nationKr=" + nationKr + ", cashBuyRate=" + cashBuyRate + ", cashSellRate=" + cashSellRate
			+ ", transferSendRate=" + transferSendRate + ", transferReceiveRate=" + transferReceiveRate
			+ ", buyBasicRate=" + buyBasicRate + ", usdChangeRate=" + usdChangeRate + ", basicDate=" + basicDate + "]";
}





   

}
