package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.CatgDTO;
import kakao.domain.EcatgCatgDTO;
import kakao.persistence.EcatgCatgDAO;

public class ListEcatgCatgService {

	// 1. 싱글톤
	private ListEcatgCatgService() {}   // ㄱ. private 생성자 선언  이유? 외부 객체 생성 못하게하기 위헤
	private static ListEcatgCatgService instance = null; // ㄴ. private static 객체 변수
	public static ListEcatgCatgService getInstance() {  // ㄷ. public static 메서드
		if( instance == null ) {
			instance = new ListEcatgCatgService();
		}
		return instance;
	}

	public List<EcatgCatgDTO> selectEcatgCatgList(){
		//
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			EcatgCatgDAO dao = EcatgCatgDAO.getInstance();
			List<EcatgCatgDTO> list = null;
			list = dao.selectEcatgCatgList(con);
			return list;
		} catch (NamingException | SQLException e) { 
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

}
