package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.MemberDTO;
import kakao.persistence.MemberDAO;

public class SignUpService {

	// 1. 싱글톤
	private SignUpService() {}  
	private static SignUpService instance = null; 
	public static SignUpService getInstance() {  
		if( instance == null ) {
			instance = new SignUpService();
		}
		return instance;
	}

	public int addMember( MemberDTO dto ){
		
		Connection con = null;
		int rowCount = 0;
		
		try {
			con = ConnectionProvider.getConnection();
			MemberDAO dao = MemberDAO.getInstance();

			con.setAutoCommit(false); 
			
			rowCount = dao.addMember(con, dto);
			
			con.commit();
		} catch (NamingException | SQLException e) {
			JdbcUtil.rollback(con);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		return rowCount;
		
	}

}
