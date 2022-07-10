package kakao.domain;

import java.util.Date;

public class ReplyBoardDTO {
	private int qa_seq;
	private String qa_id;
	private String qa_class;
	private String qa_title;
	private String qa_content;
	private Date qa_wdate;
	private int qa_readed;
	private int qa_lock;
	private int qa_ref;
	private int qa_step;
	private int qa_depth;
	public int getQa_seq() {
		return qa_seq;
	}
	public void setQa_seq(int qa_seq) {
		this.qa_seq = qa_seq;
	}
	public String getQa_id() {
		return qa_id;
	}
	public void setQa_id(String qa_id) {
		this.qa_id = qa_id;
	}
	public String getQa_class() {
		return qa_class;
	}
	public void setQa_class(String qa_class) {
		this.qa_class = qa_class;
	}
	public String getQa_title() {
		return qa_title;
	}
	public void setQa_title(String qa_title) {
		this.qa_title = qa_title;
	}
	public String getQa_content() {
		return qa_content;
	}
	public void setQa_content(String qa_content) {
		this.qa_content = qa_content;
	}
	public Date getQa_wdate() {
		return qa_wdate;
	}
	public void setQa_wdate(Date qa_wdate) {
		this.qa_wdate = qa_wdate;
	}
	public int getQa_readed() {
		return qa_readed;
	}
	public void setQa_readed(int qa_readed) {
		this.qa_readed = qa_readed;
	}
	public int getQa_lock() {
		return qa_lock;
	}
	public void setQa_lock(int qa_lock) {
		this.qa_lock = qa_lock;
	}
	public int getQa_ref() {
		return qa_ref;
	}
	public void setQa_ref(int qa_ref) {
		this.qa_ref = qa_ref;
	}
	public int getQa_step() {
		return qa_step;
	}
	public void setQa_step(int qa_step) {
		this.qa_step = qa_step;
	}
	public int getQa_depth() {
		return qa_depth;
	}
	public void setQa_depth(int qa_depth) {
		this.qa_depth = qa_depth;
	}
	
	

   
}