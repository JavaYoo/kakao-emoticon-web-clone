package kakao.domain;

import java.util.Date;

public class PurchasesDTO {
	
	private String bl_id;
	private int bl_seq;
	private String bl_payway;
	private int bl_num;
	private Date bl_date;
	private int el_price;
	private String bl_state;
	private String el_name;
	private String el_maker;
	private String el_stopimg;
	
	public String getBl_id() {
		return bl_id;
	}
	public void setBl_id(String bl_id) {
		this.bl_id = bl_id;
	}
	public int getBl_seq() {
		return bl_seq;
	}
	public void setBl_seq(int bl_seq) {
		this.bl_seq = bl_seq;
	}
	public String getBl_payway() {
		return bl_payway;
	}
	public void setBl_payway(String bl_payway) {
		this.bl_payway = bl_payway;
	}
	public int getBl_num() {
		return bl_num;
	}
	public void setBl_num(int bl_num) {
		this.bl_num = bl_num;
	}
	public Date getBl_date() {
		return bl_date;
	}
	public void setBl_date(Date bl_date) {
		this.bl_date = bl_date;
	}
	public int getEl_price() {
		return el_price;
	}
	public void setEl_price(int el_price) {
		this.el_price = el_price;
	}
	public String getBl_state() {
		return bl_state;
	}
	public void setBl_state(String bl_state) {
		this.bl_state = bl_state;
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
	public String getEl_stopimg() {
		return el_stopimg;
	}
	public void setEl_stopimg(String el_stopimg) {
		this.el_stopimg = el_stopimg;
	}
	public PurchasesDTO() {
		super();
	
	}
	public PurchasesDTO(String bl_id, int bl_seq ,String bl_payway, int bl_num, Date bl_date, int el_price,
			String bl_state, String el_name, String el_maker, String el_stopimg) {
		super();
		this.bl_id = bl_id;
		this.bl_seq = bl_seq;
		this.bl_payway = bl_payway;
		this.bl_num = bl_num;
		this.bl_date = bl_date;
		this.el_price = el_price;
		this.bl_state = bl_state;
		this.el_name = el_name;
		this.el_maker = el_maker;
		this.el_stopimg = el_stopimg;
	}
	
}
