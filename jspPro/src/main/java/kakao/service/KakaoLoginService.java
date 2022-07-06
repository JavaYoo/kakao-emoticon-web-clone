package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.KakaoElistDTO;
import kakao.domain.KakaoLoginDTO;
import kakao.persistence.KakaoLoginDAO;

public class KakaoLoginService {

	// 1. 싱글톤
	private KakaoLoginService() {}
	private static KakaoLoginService instance = new KakaoLoginService();
	public static KakaoLoginService getInstance() {
		return instance;
	}

	public List<KakaoLoginDTO> check(){
		//
		Connection con = null;
		String id = null;
		String pwd = null;
		try {
			con = ConnectionProvider.getConnection();
			KakaoLoginDAO dao = KakaoLoginDAO.getInstance();
			List<KakaoLoginDTO> elist = null;
			elist = dao.loginCheck(id , pwd , con);
			
			return elist;
		} catch (NamingException | SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

}