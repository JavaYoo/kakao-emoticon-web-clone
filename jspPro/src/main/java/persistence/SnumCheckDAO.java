package mypage.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import mypage.domain.LikesDTO;




public class SnumCheckDAO {
	

	 private SnumCheckDAO() {}
	   private static SnumCheckDAO instance = new SnumCheckDAO();
	   public static SnumCheckDAO getInstance() {
	      return instance;
	   }
	   //회원 id를 받아와서 비교
	   public int  snumcheck(Connection conn,String snum ) throws SQLException, NamingException {
			
		   int snnum=0;
		   // Connection conn = DBconn.getConnection();
		   PreparedStatement pstmt = null;
		    		
		    String sql =	 "select sn_num"
		    		+ " from em_snum "
		    		+ " where sn_code=?";
		    		
		    		
		    	  
		    try{
		    	
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, snum);
		   
		    	
		        ResultSet rs =  pstmt.executeQuery();
		 
		        snnum = rs.getInt(1);
		    	 
		        
		       
		        
		        pstmt.close();
		        rs.close();
		        conn.close();
		    }catch(Exception e){
		    	e.printStackTrace();
		    }
	   
	   return snnum;
	   }
}
	  
