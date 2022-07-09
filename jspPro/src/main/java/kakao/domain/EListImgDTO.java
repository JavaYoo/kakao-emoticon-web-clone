package kakao.domain;

public class EListImgDTO {
	
	private String el_name;
	private String ei_path;
	
	
	public EListImgDTO() {
		super();
	}
	public EListImgDTO(String el_name, String ei_path) {
		super();
		this.el_name = el_name;
		this.ei_path = ei_path;
	}
	
	
	public String getEl_name() {
		return el_name;
	}
	public void setEl_name(String el_name) {
		this.el_name = el_name;
	}
	public String getEi_path() {
		return ei_path;
	}
	public void setEi_path(String ei_path) {
		this.ei_path = ei_path;
	}
	
	

} // class
