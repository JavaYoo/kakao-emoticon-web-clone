package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import domain.BuyListDTO;
import persistence.BuyListDAO;
import persistence.GiftBoxDAO;

public class GiftCheckService {
	 
	// 1. 싱글톤
	private GiftCheckService() {}    
	private static GiftCheckService instance = null;   
	public static GiftCheckService getInstance() {  
		if(   instance == null  ) {
			instance = new GiftCheckService();
		}
		return instance;
	}
	
	public int buyCheck(int gb_emnum, String gb_sendid, String gb_getid){
		Connection con = null;
		int rowCount = 0;
 		try {
			con = ConnectionProvider.getConnection();
			GiftBoxDAO dao = GiftBoxDAO.getInstance();			 
			rowCount = dao.giftCheck(con, gb_emnum, gb_sendid, gb_getid);			 
		} catch (NamingException | SQLException e) {  
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
 		return rowCount;
	}


} // class
