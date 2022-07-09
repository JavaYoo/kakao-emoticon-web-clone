package kakao.domain;

public class CatgDTO {
	
	private String ct_main;
	private int ct_num;
	
	
	public CatgDTO() {
		super();
	}
	
	public CatgDTO(String ct_main) {
		super();
		this.ct_main = ct_main;
	}
	
	public CatgDTO(String ct_main, int ct_num) {
		super();
		this.ct_main = ct_main;
		this.ct_num = ct_num;
	}
	
	public String getCt_main() {
		return ct_main;
	}
	public void setCt_main(String ct_main) {
		this.ct_main = ct_main;
	}
	public int getCt_num() {
		return ct_num;
	}
	public void setCt_num(int ct_num) {
		this.ct_num = ct_num;
	}
	
	

} // class
