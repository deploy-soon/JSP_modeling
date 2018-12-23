package guestbook.bean;

import java.sql.Date;

/*
 * CREATE TABLE WITH ORACLE DATABASE SQL
 * 
 * create table guest_book(
 * num number primary key,
 * writer varchar2( 30 ) not null,
 * title varchar2( 50 ) not null,
 * contents varchar2( 4000 ) not null,
 * regist_date date default sysdate
 * );
*/
public class GuestBookBean {
	private int num;
	private String writer;
	private String title;
	private String contents;
	private Date regist_date;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getRegist_date() {
		return regist_date;
	}
	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}
}
