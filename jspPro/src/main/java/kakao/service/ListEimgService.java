package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.EListImgDTO;
import kakao.persistence.EListImgDAO;

public class ListEimgService {

	// 1. 싱글톤
	private ListEimgService() {}   // ㄱ. private 생성자 선언  이유? 외부 객체 생성 못하게하기 위헤
	private static ListEimgService instance = null; // ㄴ. private static 객체 변수
	public static ListEimgService getInstance() {  // ㄷ. public static 메서드
		if( instance == null ) {
			instance = new ListEimgService();
		}
		return instance;
	}

	public List<EListImgDTO> selectEimgList(){
		//
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			EListImgDAO dao = EListImgDAO.getInstance();
			List<EListImgDTO> list = null;
			list = dao.selectEimgList(con);
			return list;
		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

}
