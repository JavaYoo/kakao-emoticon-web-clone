package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.KakaoEimgDTO;
import kakao.domain.KakaoElistDTO;
import kakao.persistence.KakaoEimgDAO;

public class KakaoEimgService {

	// 1. 싱글톤
	private KakaoEimgService() {}
	private static KakaoEimgService instance = new KakaoEimgService();
	public static KakaoEimgService getInstance() {
		return instance;
	}

	public Map<KakaoElistDTO, List<KakaoEimgDTO>> select(){
		//
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			KakaoEimgDAO dao = KakaoEimgDAO.getInstance();
			Map<KakaoElistDTO, List<KakaoEimgDTO>> emap = null;
			emap = dao.selectList(con);
			return emap;
		} catch (NamingException | SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

}