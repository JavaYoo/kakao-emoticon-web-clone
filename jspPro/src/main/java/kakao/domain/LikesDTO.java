package kakao.domain;

public class LikesDTO {
	
	
	private String el_mainimg;
	private String el_stopimg;
	private String el_name;
	private String el_maker;
	private int li_num;
	
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
	
	public int getLi_num() {
		return li_num;
	}
	public void setLi_num(int li_num) {
		this.li_num = li_num;
	}
	public LikesDTO() {
		super();
		
	}
	
	public LikesDTO(String el_mainimg, String el_stopimg, String el_name, String el_maker, int li_num) {
		super();
		this.el_mainimg = el_mainimg;
		this.el_stopimg = el_stopimg;
		this.el_name = el_name;
		this.el_maker = el_maker;
		this.li_num = li_num;
	}

	

}
