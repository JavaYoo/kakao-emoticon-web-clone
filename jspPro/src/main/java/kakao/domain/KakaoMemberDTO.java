package kakao.domain;

public class KakaoMemberDTO {
	
	private String m_id;
	private String m_pwd;
	private String m_nn;
	private String m_pimg;
	
	public KakaoMemberDTO() {
		super();
	}
	public KakaoMemberDTO(String m_id, String m_pwd, String m_nn, String m_pimg) {
		super();
		this.m_id = m_id;
		this.m_pwd = m_pwd;
		this.m_nn = m_nn;
		this.m_pimg = m_pimg;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pwd() {
		return m_pwd;
	}
	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}
	public String getM_nn() {
		return m_nn;
	}
	public void setM_nn(String m_nn) {
		this.m_nn = m_nn;
	}
	public String getM_pimg() {
		return m_pimg;
	}
	public void setM_pimg(String m_pimg) {
		this.m_pimg = m_pimg;
	}
	
	
}
