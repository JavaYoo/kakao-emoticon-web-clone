package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.GiftBoxDTO;
import persistence.GiftBoxDAO;

public class GiftService {
	 
	// 1. 싱글톤
	private GiftService() {}    
	private static GiftService instance = null;   
	public static GiftService getInstance() {  
		if(   instance == null  ) {
			instance = new GiftService();
		}
		return instance;
	}
	
	public int gift(GiftBoxDTO dto){
		Connection con = null;
		int rowCount = 0;
 		try {
			con = ConnectionProvider.getConnection();
			GiftBoxDAO dao = GiftBoxDAO.getInstance();
			 con.setAutoCommit(false); // 트랜잭션 처리   커밋, 롤백 
			 rowCount = dao.insert(con, dto);
			 con.commit();
		} catch (NamingException | SQLException e) {  
			JdbcUtil.rollback(con);
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
 		return rowCount;
	}


} // class
