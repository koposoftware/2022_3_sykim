package kr.ac.kopo.vo;

public class ExchangeTransactionVO {

private int no;
private String currency;
private int cashbuyrate;
private int PrimeRate;
private int ApplicableRate;
private int PrimeExchangeValue;
private int FinalAmount;
private int TargetedRate;
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public String getCurrency() {
	return currency;
}
public void setCurrency(String currency) {
	this.currency = currency;
}
public int getCashbuyrate() {
	return cashbuyrate;
}
public void setCashbuyrate(int cashbuyrate) {
	this.cashbuyrate = cashbuyrate;
}
public int getPrimeRate() {
	return PrimeRate;
}
public void setPrimeRate(int primeRate) {
	PrimeRate = primeRate;
}
public int getApplicableRate() {
	return ApplicableRate;
}
public void setApplicableRate(int applicableRate) {
	ApplicableRate = applicableRate;
}
public int getPrimeExchangeValue() {
	return PrimeExchangeValue;
}
public void setPrimeExchangeValue(int primeExchangeValue) {
	PrimeExchangeValue = primeExchangeValue;
}
public int getFinalAmount() {
	return FinalAmount;
}
public void setFinalAmount(int finalAmount) {
	FinalAmount = finalAmount;
}
public int getTargetedRate() {
	return TargetedRate;
}
public void setTargetedRate(int targetedRate) {
	TargetedRate = targetedRate;
}
@Override
public String toString() {
	return "ExchangeTransactionVO [no=" + no + ", currency=" + currency + ", cashbuyrate=" + cashbuyrate
			+ ", PrimeRate=" + PrimeRate + ", ApplicableRate=" + ApplicableRate + ", PrimeExchangeValue="
			+ PrimeExchangeValue + ", FinalAmount=" + FinalAmount + ", TargetedRate=" + TargetedRate + "]";
}


}
