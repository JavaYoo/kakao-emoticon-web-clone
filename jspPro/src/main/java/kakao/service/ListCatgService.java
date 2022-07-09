package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.CatgDTO;
import kakao.persistence.CatgDAO;

public class ListCatgService {

	// 1. 싱글톤
	private ListCatgService() {}   // ㄱ. private 생성자 선언  이유? 외부 객체 생성 못하게하기 위헤
	private static ListCatgService instance = null; // ㄴ. private static 객체 변수
	public static ListCatgService getInstance() {  // ㄷ. public static 메서드
		if( instance == null ) {
			instance = new ListCatgService();
		}
		return instance;
	}

	public List<CatgDTO> selectCatgList(){
		//
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			CatgDAO dao = CatgDAO.getInstance();
			List<CatgDTO> list = null;
			list = dao.selectCatgList(con);
			return list;
		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

}
