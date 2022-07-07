package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.BuyListDTO;
import kakao.persistence.BuyListDAO;

public class BuyService {
	 
	// 1. 싱글톤
	private BuyService() {}    
	private static BuyService instance = null;   
	public static BuyService getInstance() {  
		if(   instance == null  ) {
			instance = new BuyService();
		}
		return instance;
	}
	
	public int buy(BuyListDTO dto){
		Connection con = null;
		int rowCount = 0;
 		try {
			con = ConnectionProvider.getConnection();
			BuyListDAO dao = BuyListDAO.getInstance();
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
