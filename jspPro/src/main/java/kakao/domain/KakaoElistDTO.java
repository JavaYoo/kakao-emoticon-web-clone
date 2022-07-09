package kakao.domain;

import java.util.Date;

public class KakaoElistDTO {

	private int el_num;
	private String el_name;
	private String el_maker;
	private int el_price;
	private Date el_date;
	private String el_mainimg;
	private String el_stopimg;

	public KakaoElistDTO() {
		super();
	}

	public KakaoElistDTO(int el_num, String el_name, String el_maker, int el_price, Date el_date, String el_mainimg) {
		super();
		this.el_num = el_num;
		this.el_name = el_name;
		this.el_maker = el_maker;
		this.el_price = el_price;
		this.el_date = el_date;
		this.el_mainimg = el_mainimg;
	}

	public int getEl_num() {
		return el_num;
	}

	public void setEl_num(int el_num) {
		this.el_num = el_num;
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

	public int getEl_price() {
		return el_price;
	}

	public void setEl_price(int el_price) {
		this.el_price = el_price;
	}

	public Date getEl_date() {
		return el_date;
	}

	public void setEl_date(Date el_date) {
		this.el_date = el_date;
	}

	public String getEl_mainimg() {
		return el_mainimg;
	}

	public void setEl_mainimg(String el_mainimg) {
		this.el_mainimg = el_mainimg;
	}
	
	public String getEl_stopimg() {
		return el_stopimg;
	}

	public void setEl_stopimg(String el_stopimg) {
		this.el_stopimg = el_stopimg;
	}

}
