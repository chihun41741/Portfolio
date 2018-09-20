package com.biz.home.vo;

public class SaleInfoVO {
	private int saleno;
	private String writer;
	private String loc;
	private int leasetype;
	private int roomtype;
	private int monthlyrent;
	private int deposit;
	private String startdate;
	private String duedate;
	private String comment;
	private String filename;
	
	
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public int getSaleno() {
		return saleno;
	}
	public void setSaleno(int saleno) {
		this.saleno = saleno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public int getLeasetype() {
		return leasetype;
	}
	public void setLeasetype(int leasetype) {
		this.leasetype = leasetype;
	}
	public int getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(int roomtype) {
		this.roomtype = roomtype;
	}
	public int getMonthlyrent() {
		return monthlyrent;
	}
	public void setMonthlyrent(int monthlyrent) {
		this.monthlyrent = monthlyrent;
	}
	public int getDeposit() {
		return deposit;
	}
	public void setDeposit(int deposit) {
		this.deposit = deposit;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
}
