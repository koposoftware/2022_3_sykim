package kr.ac.kopo.vo;

public class RemittanceVO {

	private int no;
	private String accountNo;
	private String remType;
	private String reason;
	private String exchangeBank;
	private String branchAddr;
	private int	remCharge;
	private int	interCharge;
	private int	cableCharge;
	private int amount;

	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getRemType() {
		return remType;
	}
	public void setRemType(String remType) {
		this.remType = remType;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getExchangeBank() {
		return exchangeBank;
	}
	public void setExchangeBank(String exchangeBank) {
		this.exchangeBank = exchangeBank;
	}
	public String getBranchAddr() {
		return branchAddr;
	}
	public void setBranchAddr(String branchAddr) {
		this.branchAddr = branchAddr;
	}
	public int getRemCharge() {
		return remCharge;
	}
	public void setRemCharge(int remCharge) {
		this.remCharge = remCharge;
	}
	public int getInterCharge() {
		return interCharge;
	}
	public void setInterCharge(int interCharge) {
		this.interCharge = interCharge;
	}
	public int getCableCharge() {
		return cableCharge;
	}
	public void setCableCharge(int cableCharge) {
		this.cableCharge = cableCharge;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	@Override
	public String toString() {
		return "RemittanceVO [no=" + no + ", accountNo=" + accountNo + ", remType=" + remType + ", reason=" + reason
				+ ", exchangeBank=" + exchangeBank + ", branchAddr=" + branchAddr + ", remCharge=" + remCharge
				+ ", interCharge=" + interCharge + ", cableCharge=" + cableCharge + ", amount=" + amount + "]";
	}
	
	
	
}