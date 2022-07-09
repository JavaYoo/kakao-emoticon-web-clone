package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.persistence.EmailCheckDAO;

public class EmailCheckService {
	 
	// 1. 싱글톤
	private EmailCheckService() {}    
	private static EmailCheckService instance = null;   
	public static EmailCheckService getInstance() {  
		if(   instance == null  ) {
			instance = new EmailCheckService();
		}
		return instance;
	}
	
	public int emailCheck(String m_id){
		Connection con = null;
		int rowCount = 0;
 		try {
			con = ConnectionProvider.getConnection();
			EmailCheckDAO dao = EmailCheckDAO.getInstance();			 
			rowCount = dao.emailCheck(con, m_id);			 
		} catch (NamingException | SQLException e) {  
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
 		return rowCount;
	}


} // class
