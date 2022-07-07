package kakao.domain;

import java.sql.Date;

public class BuyListDTO {

	private int bl_seq;
	private String bl_id;
	private String bl_payway;
	private int bl_num;
	private Date bl_date;
	private String bl_state;
	private int bl_price;
	
	public int getBl_seq() {
		return bl_seq;
	}
	public void setBl_seq(int bl_seq) {
		this.bl_seq = bl_seq;
	}
	public String getBl_id() {
		return bl_id;
	}
	public void setBl_id(String bl_id) {
		this.bl_id = bl_id;
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
	public String getBl_state() {
		return bl_state;
	}
	public void setBl_state(String bl_state) {
		this.bl_state = bl_state;
	}
	
	public int getBl_price() {
		return bl_price;
	}
	public void setBl_price(int bl_price) {
		this.bl_price = bl_price;
	}
	public BuyListDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BuyListDTO(int bl_seq, String bl_id, String bl_payway, int bl_num, Date bl_date, String bl_state,
			int bl_price) {
		super();
		this.bl_seq = bl_seq;
		this.bl_id = bl_id;
		this.bl_payway = bl_payway;
		this.bl_num = bl_num;
		this.bl_date = bl_date;
		this.bl_state = bl_state;
		this.bl_price = bl_price;
	}
	
	
}
