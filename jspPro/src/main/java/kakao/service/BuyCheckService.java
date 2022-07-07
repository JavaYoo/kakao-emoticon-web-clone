package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.BuyListDTO;
import persistence.BuyListDAO;

public class BuyCheckService {
	 
	// 1. 싱글톤
	private BuyCheckService() {}    
	private static BuyCheckService instance = null;   
	public static BuyCheckService getInstance() {  
		if(   instance == null  ) {
			instance = new BuyCheckService();
		}
		return instance;
	}
	
	public int buyCheck(int bl_num, String bl_id){
		Connection con = null;
		int rowCount = 0;
 		try {
			con = ConnectionProvider.getConnection();
			BuyListDAO dao = BuyListDAO.getInstance();			 
			rowCount = dao.buyCheck(con, bl_num, bl_id);			 
		} catch (NamingException | SQLException e) {  
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
 		return rowCount;
	}


} // class
