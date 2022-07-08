package mypage.domain;

import java.util.Date;

public class CouponsDTO {

	private String co_name;
	private Date co_date;
	private int co_percent;
	
	public String getCo_name() {
		return co_name;
	}
	public void setCo_name(String co_name) {
		this.co_name = co_name;
	}
	public Date getCo_date() {
		return co_date;
	}
	public void setCo_date(Date co_date) {
		this.co_date = co_date;
	}
	public int getCo_percent() {
		return co_percent;
	}
	public void setCo_percent(int co_percent) {
		this.co_percent = co_percent;
	}
	public CouponsDTO() {
		super();
		
	}
	public CouponsDTO(String co_name, Date co_date, int co_percent) {
		super();
		this.co_name = co_name;
		this.co_date = co_date;
		this.co_percent = co_percent;
	}
	@Override
	public String toString() {
		return "CouponsDTO [co_name=" + co_name + ", co_date=" + co_date + ", co_percent=" + co_percent + "]";
	}
	
	
	
	
	
}
