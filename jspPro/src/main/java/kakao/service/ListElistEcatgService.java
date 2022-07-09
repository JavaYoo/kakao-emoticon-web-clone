package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.EcatgCatgDTO;
import kakao.domain.ElistEcatgDTO;
import kakao.persistence.ElistEcatgDAO;

public class ListElistEcatgService {
	
	// 1. 싱글톤
		private ListElistEcatgService() {}   // ㄱ. private 생성자 선언  이유? 외부 객체 생성 못하게하기 위헤
		private static ListElistEcatgService instance = null; // ㄴ. private static 객체 변수
		public static ListElistEcatgService getInstance() {  // ㄷ. public static 메서드
			if( instance == null ) {
				instance = new ListElistEcatgService();
			}
			return instance;
		}

		public List<ElistEcatgDTO> selectElistEcatgList(){
			//
			Connection con = null;
			try {
				con = ConnectionProvider.getConnection();
				ElistEcatgDAO dao = ElistEcatgDAO.getInstance();
				List<ElistEcatgDTO> list = null;
				list = dao.selectElistEcatgList(con);
				return list;
			} catch (NamingException | SQLException e) { 
				throw new RuntimeException(e);
			} finally {
				JdbcUtil.close(con);
			}
		}

}
