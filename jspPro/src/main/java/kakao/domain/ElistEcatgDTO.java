package kakao.domain;

import java.sql.Date;

public class ElistEcatgDTO {
	
	private String el_mainimg;
	private String el_stopimg;
	private String ec_sub;
	private String el_name;
	private String el_maker;
	private Date el_date;
	private String ct_main;
	private boolean newImg;
	
	public ElistEcatgDTO() {
		super();
	}
	
	public ElistEcatgDTO(String el_mainimg, String el_stopimg, String ec_sub, String el_name, String el_maker,
			Date el_date, String ct_main, boolean newImg) {
		super();
		this.el_mainimg = el_mainimg;
		this.el_stopimg = el_stopimg;
		this.ec_sub = ec_sub;
		this.el_name = el_name;
		this.el_maker = el_maker;
		this.el_date = el_date;
		this.ct_main = ct_main;
		this.newImg = newImg;
	}



	public String getEl_mainimg() {
		return el_mainimg;
	}

	public void setEl_mainimg(String el_mainimg) {
		this.el_mainimg = el_mainimg;
	}

	public String getEc_sub() {
		return ec_sub;
	}

	public void setEc_sub(String ec_sub) {
		this.ec_sub = ec_sub;
	}
	
	public String getEl_maker() {
		return el_maker;
	}

	public void setEl_maker(String el_maker) {
		this.el_maker = el_maker;
	}

	public Date getEl_date() {
		return el_date;
	}

	public void setEl_date(Date el_date) {
		this.el_date = el_date;
	}

	public String getEl_name() {
		return el_name;
	}
	
	public void setEl_name(String el_name) {
		this.el_name = el_name;
	}

	public String getEl_stopimg() {
		return el_stopimg;
	}

	public void setEl_stopimg(String el_stopimg) {
		this.el_stopimg = el_stopimg;
	}

	public String getCt_main() {
		return ct_main;
	}
	
	public void setCt_main(String ct_main) {
		this.ct_main = ct_main;
	}

	public boolean isNewImg() {
		return newImg;
	}

	public void setNewImg(boolean newImg) {
		this.newImg = newImg;
	}
	
	
	


} //class
