package domain;

import java.sql.Date;

public class GiftBoxDTO {
	private int gb_seq;
	private String gb_sendid;
	private String gb_payway;
	private Date gb_date;
	private String gb_state;
	private int gb_enum;
	private int gb_payprice;
	private String gb_getid;
	
	public String getGb_getid() {
		return gb_getid;
	}
	public void setGb_getid(String gb_getid) {
		this.gb_getid = gb_getid;
	}
	public int getGb_seq() {
		return gb_seq;
	}
	public void setGb_seq(int gb_seq) {
		this.gb_seq = gb_seq;
	}
	public String getGb_sendid() {
		return gb_sendid;
	}
	public void setGb_sendid(String gb_sendid) {
		this.gb_sendid = gb_sendid;
	}
	public String getGb_payway() {
		return gb_payway;
	}
	public void setGb_payway(String payway) {
		this.gb_payway = payway;
	}
	public Date getGb_date() {
		return gb_date;
	}
	public void setGb_date(Date gb_date) {
		this.gb_date = gb_date;
	}
	public String getGb_state() {
		return gb_state;
	}
	public void setGb_state(String gb_state) {
		this.gb_state = gb_state;
	}
	public int getGb_enum() {
		return gb_enum;
	}
	public void setGb_enum(int gb_enum) {
		this.gb_enum = gb_enum;
	}
	public int getGb_payprice() {
		return gb_payprice;
	}
	public void setGb_payprice(int gb_payprice) {
		this.gb_payprice = gb_payprice;
	}

	public GiftBoxDTO(int gb_seq, String gb_sendid, String gb_payway, Date gb_date, String gb_state, int gb_enum,
			int gb_payprice, String gb_getid) {
		super();
		this.gb_seq = gb_seq;
		this.gb_sendid = gb_sendid;
		this.gb_payway = gb_payway;
		this.gb_date = gb_date;
		this.gb_state = gb_state;
		this.gb_enum = gb_enum;
		this.gb_payprice = gb_payprice;
		this.gb_getid = gb_getid;
	}
	public GiftBoxDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
