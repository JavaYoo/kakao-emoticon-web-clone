package kakao.domain;

import java.util.Date;

public class SentDTO {

	
	private Date gb_date;
	private String m_nn;
	private int gb_seq;
	private String gb_payway;
	private int gb_payprice;
	private String gb_state;
	private String el_stopimg;
	private String el_name;
	private String el_maker;
	private int gb_emnum;
	
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
	public int getGb_seq() {
		return gb_seq;
	}
	public void setGb_seq(int gb_seq) {
		this.gb_seq = gb_seq;
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
	public String getEl_stopimg() {
		return el_stopimg;
	}
	public void setEl_stopimg(String el_stopimg) {
		this.el_stopimg = el_stopimg;
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
	
	public int getGb_emnum() {
		return gb_emnum;
	}
	public void setGb_emnum(int gb_emnum) {
		this.gb_emnum = gb_emnum;
	}
	public SentDTO() {
		super();
	
	}
	public SentDTO(Date gb_date, String m_nn, int gb_seq, String gb_payway, int gb_payprice, String gb_state,
			String el_stopimg, String el_name, String el_maker, int gb_emnum) {
		super();
		this.gb_date = gb_date;
		this.m_nn = m_nn;
		this.gb_seq = gb_seq;
		this.gb_payway = gb_payway;
		this.gb_payprice = gb_payprice;
		this.gb_state = gb_state;
		this.el_stopimg = el_stopimg;
		this.el_name = el_name;
		this.el_maker = el_maker;
		this.gb_emnum = gb_emnum;
	}
	
	
	
}
