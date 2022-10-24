package kr.ac.kopo.vo;

public class AccountVO {

private String accountNo;
private String password;
private String accountName;
private int balance;
private String accountType;
private String bankCode;




public String getAccountNo() {
	return accountNo;
}




public void setAccountNo(String accountNo) {
	this.accountNo = accountNo;
}




public String getPassword() {
	return password;
}




public void setPassword(String password) {
	this.password = password;
}




public String getAccountName() {
	return accountName;
}




public void setAccountName(String accountName) {
	this.accountName = accountName;
}




public int getBalance() {
	return balance;
}




public void setBalance(int balance) {
	this.balance = balance;
}




public String getAccountType() {
	return accountType;
}




public void setAccountType(String accountType) {
	this.accountType = accountType;
}




public String getBankCode() {
	return bankCode;
}




public void setBankCode(String bankCode) {
	this.bankCode = bankCode;
}




@Override
public String toString() {
	return "AccountVO [accountNo=" + accountNo + ", password=" + password + ", accountName=" + accountName
			+ ", balance=" + balance + ", accountType=" + accountType + ", bankCode=" + bankCode + "]";
}




}