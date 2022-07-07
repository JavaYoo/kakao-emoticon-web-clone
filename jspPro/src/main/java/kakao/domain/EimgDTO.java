package kakao.domain;

public class EimgDTO {

	private int ei_seq;
	private int ei_num;
	private String ei_path;
	public int getEi_seq() {
		return ei_seq;
	}
	public void setEi_seq(int ei_seq) {
		this.ei_seq = ei_seq;
	}
	public int getEi_num() {
		return ei_num;
	}
	public void setEi_num(int ei_num) {
		this.ei_num = ei_num;
	}
	public String getEi_path() {
		return ei_path;
	}
	public void setEi_path(String ei_path) {
		this.ei_path = ei_path;
	}
	public EimgDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public EimgDTO(int ei_seq, int ei_num, String ei_path) {
		super();
		this.ei_seq = ei_seq;
		this.ei_num = ei_num;
		this.ei_path = ei_path;
	}
	public EimgDTO(String ei_path) {
		super();
		this.ei_path = ei_path;
	}
	
	
}
