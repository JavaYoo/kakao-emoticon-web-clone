package kakao.domain;

import java.util.Date;

public class UsedCouponsDTO {

	private String co_name;
	private Date co_usedate;
	private int co_percent;
	
	public String getCo_name() {
		return co_name;
	}
	public void setCo_name(String co_name) {
		this.co_name = co_name;
	}
	public Date getCo_usedate() {
		return co_usedate;
	}
	public void setCo_usedate(Date co_usedate) {
		this.co_usedate = co_usedate;
	}
	public int getCo_percent() {
		return co_percent;
	}
	public void setCo_percent(int co_percent) {
		this.co_percent = co_percent;
	}
	public UsedCouponsDTO() {
		super();
		
	}
	public UsedCouponsDTO(String co_name, Date co_usedate, int co_percent) {
		super();
		this.co_name = co_name;
		this.co_usedate = co_usedate;
		this.co_percent = co_percent;
	}
	@Override
	public String toString() {
		return "UsedCouponsDTO [co_name=" + co_name + ", co_usedate=" + co_usedate + ", co_percent=" + co_percent + "]";
	}
	
	
}
