package kakao.domain;

import java.util.Date;

public class ReceivedDTO {


	private Date gb_date;
	private String m_nn;
	private String el_name;
	private String el_maker;
	private String el_staticimg;
	
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
	public ReceivedDTO() {
		super();
	
	}
	public ReceivedDTO(Date gb_date, String m_nn, String el_name, String el_maker, String el_staticimg) {
		super();
		this.gb_date = gb_date;
		this.m_nn = m_nn;
		this.el_name = el_name;
		this.el_maker = el_maker;
		this.el_staticimg = el_staticimg;
	}
	@Override
	public String toString() {
		return "ReceivedDTO [gb_date=" + gb_date + ", m_nn=" + m_nn + ", el_name=" + el_name + ", el_maker=" + el_maker
				+ ", el_staticimg=" + el_staticimg + "]";
	}
	
	

	
	
	
	
	
	
}
