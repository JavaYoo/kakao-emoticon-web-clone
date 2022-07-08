package kakao.domain;

public class LikesDTO {
	
	
	private String el_mainimg;
	private String el_staticimg;
	private String el_name;
	private String el_maker;
	
	public String getEl_mainimg() {
		return el_mainimg;
	}
	public void setEl_mainimg(String el_mainimg) {
		this.el_mainimg = el_mainimg;
	}
	public String getEl_staticimg() {
		return el_staticimg;
	}
	public void setEl_staticimg(String el_staticimg) {
		this.el_staticimg = el_staticimg;
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
	public LikesDTO() {
		super();
		
	}
	public LikesDTO(String el_mainimg, String el_staticimg, String el_name, String el_maker) {
		super();
		this.el_mainimg = el_mainimg;
		this.el_staticimg = el_staticimg;
		this.el_name = el_name;
		this.el_maker = el_maker;
	}
	@Override
	public String toString() {
		return "LikesDTO [el_mainimg=" + el_mainimg + ", el_staticimg=" + el_staticimg + ", el_name=" + el_name
				+ ", el_maker=" + el_maker + "]";
	}
	
	
	

}
