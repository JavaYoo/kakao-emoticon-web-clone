package mypage.domain;

import java.util.Date;

public class PurchasesDTO {
	
	private String bl_id;
	private int bl_paynum;
	private String bl_payway;
	private int bl_num;
	private Date bl_date;
	private int el_price;
	private String bl_state;
	private String el_name;
	private String el_maker;
	private String el_staticimg;
	
	public String getBl_id() {
		return bl_id;
	}
	public void setBl_id(String bl_id) {
		this.bl_id = bl_id;
	}
	public int getBl_paynum() {
		return bl_paynum;
	}
	public void setBl_paynum(int bl_paynum) {
		this.bl_paynum = bl_paynum;
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
	public String getEl_staticimg() {
		return el_staticimg;
	}
	public void setEl_staticimg(String el_staticimg) {
		this.el_staticimg = el_staticimg;
	}
	public PurchasesDTO() {
		super();
	
	}
	public PurchasesDTO(String bl_id, int bl_paynum, String bl_payway, int bl_num, Date bl_date, int el_price,
			String bl_state, String el_name, String el_maker, String el_staticimg) {
		super();
		this.bl_id = bl_id;
		this.bl_paynum = bl_paynum;
		this.bl_payway = bl_payway;
		this.bl_num = bl_num;
		this.bl_date = bl_date;
		this.el_price = el_price;
		this.bl_state = bl_state;
		this.el_name = el_name;
		this.el_maker = el_maker;
		this.el_staticimg = el_staticimg;
	}
	@Override
	public String toString() {
		return "PurchasesDTO [bl_id=" + bl_id + ", bl_paynum=" + bl_paynum + ", bl_payway=" + bl_payway + ", bl_num="
				+ bl_num + ", bl_date=" + bl_date + ", el_price=" + el_price + ", bl_state=" + bl_state + ", el_name="
				+ el_name + ", el_maker=" + el_maker + ", el_staticimg=" + el_staticimg + "]";
	}
	
	
	
	

	
}
