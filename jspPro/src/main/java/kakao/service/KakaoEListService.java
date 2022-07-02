package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.KakaoElistDTO;
import kakao.persistence.KakaoElistDAO;

public class KakaoEListService {

	// 1. 싱글톤
	private KakaoEListService() {}
	private static KakaoEListService instance = new KakaoEListService();
	public static KakaoEListService getInstance() {
		return instance;
	}

	public List<KakaoElistDTO> select(){
		//
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			KakaoElistDAO dao = KakaoElistDAO.getInstance();
			List<KakaoElistDTO> elist = null;
			elist = dao.selectList(con);
			return elist;
		} catch (NamingException | SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

}