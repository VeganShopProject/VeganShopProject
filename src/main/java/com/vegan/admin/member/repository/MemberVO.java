package com.vegan.admin.member.repository;

import java.sql.Timestamp;
import java.util.Date;

public class MemberVO {
	private int seq;
	private String id;
	private String pw;
	private String name;
	private int jumin1; //주민등록번호1
	private int jumin2; //주민등록번호2
	private String email1;
	private String email2;
	private String email_get; //메일 수신 여부
	private String mobile; //집전화
	private String phone; //휴대폰
	private String zipcode1; //우편번호1
	private String zipcode2; //우편번호2
	private String addr1; //집주소
	private String addr2; //상세주소
	private Date member_date; //회원가입 날짜
	
	private String searchCondition; //검색 기능을 위한 필드
	private String searchKeyword; //검색 기능을 위한 필드
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getJumin1() {
		return jumin1;
	}
	public void setJumin1(int jumin1) {
		this.jumin1 = jumin1;
	}
	public int getJumin2() {
		return jumin2;
	}
	public void setJumin2(int jumin2) {
		this.jumin2 = jumin2;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getEmail_get() {
		return email_get;
	}
	public void setEmail_get(String email_get) {
		this.email_get = email_get;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getZipcode1() {
		return zipcode1;
	}
	public void setZipcode1(String zipcode1) {
		this.zipcode1 = zipcode1;
	}
	public String getZipcode2() {
		return zipcode2;
	}
	public void setZipcode2(String zipcode2) {
		this.zipcode2 = zipcode2;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public Date getMember_date() {
		return member_date;
	}
	public void setMember_date(Timestamp member_date) {
		this.member_date = member_date;
	}
	public String getSearchCondition() {
		return searchCondition;
	}
	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}
	public String getSearchKeyword() {
		return searchKeyword;
	}
	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	@Override
	public String toString() {
		return "seq : "+seq+", id : "+id+", pw : "+pw+", "
				+ "name : "+name+", jumin : "+jumin1+"-"+jumin2+", email : "+email1+"@"+email2+", "
				+ "mobile : "+mobile+", phone : "+phone+", zipcode : "+zipcode1+"-"+zipcode2+"addr : "+addr1+"("+addr2+"), date : "+member_date+"\n";
	}
	
}
