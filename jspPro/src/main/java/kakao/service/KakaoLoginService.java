package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.persistence.KakaoLoginDAOImpl;

public class KakaoLoginService {

	// 1. 싱글톤
	private KakaoLoginService() {}
	private static KakaoLoginService instance = new KakaoLoginService();
	public static KakaoLoginService getInstance() {
		return instance;
	}

	public int loginCheck( String id , String pwd){
		//
		Connection con = null;
		int rowcount = 0;
		
		try {
			con = ConnectionProvider.getConnection();
			KakaoLoginDAOImpl dao = KakaoLoginDAOImpl.getInstance();
			
			rowcount = dao.loginCheck(id, pwd, con);
			
			
		} catch (NamingException | SQLException e) { 
			//e.printStackTrace();  syso("ListService.select() 에러 : ")
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
		return rowcount;
	}

}