package kr.ac.kopo.vo;

public class TransactionVO {
	   private int transNo;   
	   private String myaccountNum;    
	   private String transType;    
	   private int myBalance;    
	   private String targetName;    
	   private int transAmount;    
	   private String transDate;    
	   private String targetAccountNum;    
	   private String targetBankCode;
	   private String targetBank;
	   private String myName;
	   private String myBank;
	   
	public String getMyName() {
		return myName;
	}
	public void setMyName(String myName) {
		this.myName = myName;
	}
	public String getMyBank() {
		return myBank;
	}
	public void setMyBank(String myBank) {
		this.myBank = myBank;
	}
	public String getTargetBank() {
		return targetBank;
	}
	public void setTargetBank(String targetBank) {
		this.targetBank = targetBank;
	}
	public int getTransNo() {
		return transNo;
	}
	public void setTransNo(int transNo) {
		this.transNo = transNo;
	}
	public String getMyaccountNum() {
		return myaccountNum;
	}
	public void setMyaccountNum(String myaccountNum) {
		this.myaccountNum = myaccountNum;
	}
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public int getMyBalance() {
		return myBalance;
	}
	public void setMyBalance(int myBalance) {
		this.myBalance = myBalance;
	}
	public String getTargetName() {
		return targetName;
	}
	public void setTargetName(String targetName) {
		this.targetName = targetName;
	}
	public int getTransAmount() {
		return transAmount;
	}
	public void setTransAmount(int transAmount) {
		this.transAmount = transAmount;
	}
	public String getTransDate() {
		return transDate;
	}
	public void setTransDate(String transDate) {
		this.transDate = transDate;
	}
	public String getTargetAccountNum() {
		return targetAccountNum;
	}
	public void setTargetAccountNum(String targetAccountNum) {
		this.targetAccountNum = targetAccountNum;
	}
	public String getTargetBankCode() {
		return targetBankCode;
	}
	public void setTargetBankCode(String targetBankCode) {
		this.targetBankCode = targetBankCode;
	}
	
	@Override
	public String toString() {
		return "TransactionVO [transNo=" + transNo + ", myaccountNum=" + myaccountNum + ", transType=" + transType
				+ ", myBalance=" + myBalance + ", targetName=" + targetName + ", transAmount=" + transAmount
				+ ", transDate=" + transDate + ", targetAccountNum=" + targetAccountNum + ", targetBankCode="
				+ targetBankCode + ", targetBank=" + targetBank + ", myName=" + myName + ", myBank=" + myBank
				+ ", getMyName()=" + getMyName() + ", getMyBank()=" + getMyBank() + ", getTargetBank()="
				+ getTargetBank() + ", getTransNo()=" + getTransNo() + ", getMyaccountNum()=" + getMyaccountNum()
				+ ", getTransType()=" + getTransType() + ", getMyBalance()=" + getMyBalance() + ", getTargetName()="
				+ getTargetName() + ", getTransAmount()=" + getTransAmount() + ", getTransDate()=" + getTransDate()
				+ ", getTargetAccountNum()=" + getTargetAccountNum() + ", getTargetBankCode()=" + getTargetBankCode()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
	
	
	   
	
}
