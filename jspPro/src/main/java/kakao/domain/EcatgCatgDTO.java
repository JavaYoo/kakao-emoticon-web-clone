package kakao.domain;

public class EcatgCatgDTO {
	
	private String ec_sub;
	private String ct_main;
	
	public EcatgCatgDTO() {
		super();
	}
	public EcatgCatgDTO(String ec_sub, String ct_main) {
		super();
		this.ec_sub = ec_sub;
		this.ct_main = ct_main;
	}
	
	public String getEc_sub() {
		return ec_sub;
	}
	public void setEc_sub(String ec_sub) {
		this.ec_sub = ec_sub;
	}
	public String getCt_main() {
		return ct_main;
	}
	public void setCt_main(String ct_main) {
		this.ct_main = ct_main;
	}

	
	
	
} // class
