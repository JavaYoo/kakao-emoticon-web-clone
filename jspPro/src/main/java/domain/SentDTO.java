package mypage.domain;

import java.util.Date;

public class SentDTO {

	
	private Date gb_date;
	private String m_nn;
	private long gb_paynum;
	private String gb_payway;
	private int gb_payprice;
	private String gb_state;
	private String el_staticimg;
	private String el_name;
	private String el_maker;
	
	public Date getGb_date() {
		return gb_date;
	}
	public void setGb_date(Date gb_date) {
		this.gb_date = gb_date;
	}
	public String getM_nn() {
		return m_nn;
	}
	public void setM_nn(String m_nn) {
		this.m_nn = m_nn;
	}
	public long getGb_paynum() {
		return gb_paynum;
	}
	public void setGb_paynum(long gb_paynum) {
		this.gb_paynum = gb_paynum;
	}
	public String getGb_payway() {
		return gb_payway;
	}
	public void setGb_payway(String gb_payway) {
		this.gb_payway = gb_payway;
	}
	public int getGb_payprice() {
		return gb_payprice;
	}
	public void setGb_payprice(int gb_payprice) {
		this.gb_payprice = gb_payprice;
	}
	public String getGb_state() {
		return gb_state;
	}
	public void setGb_state(String gb_state) {
		this.gb_state = gb_state;
	}
	public String getEl_staticimg() {
		return el_staticimg;
	}
	public void setEl_staticimg(String el_staticimg) {
		this.el_staticimg = el_staticimg;
	}
	public String getEl_name() {
		return el_name;
	}
	public void setEl_name(String el_name) {
		this.el_name = el_name;
	}
	public String getEl_maker() {
		return el_maker;
	}
	public void setEl_maker(String el_maker) {
		this.el_maker = el_maker;
	}
	public SentDTO() {
		super();
	
	}
	public SentDTO(Date gb_date, String m_nn, long gb_paynum, String gb_payway, int gb_payprice, String gb_state,
			String el_staticimg, String el_name, String el_maker) {
		super();
		this.gb_date = gb_date;
		this.m_nn = m_nn;
		this.gb_paynum = gb_paynum;
		this.gb_payway = gb_payway;
		this.gb_payprice = gb_payprice;
		this.gb_state = gb_state;
		this.el_staticimg = el_staticimg;
		this.el_name = el_name;
		this.el_maker = el_maker;
	}
	@Override
	public String toString() {
		return "SentDTO [gb_date=" + gb_date + ", m_nn=" + m_nn + ", gb_paynum=" + gb_paynum + ", gb_payway="
				+ gb_payway + ", gb_payprice=" + gb_payprice + ", gb_state=" + gb_state + ", el_staticimg="
				+ el_staticimg + ", el_name=" + el_name + ", el_maker=" + el_maker + "]";
	}
	

	
	
	
}
