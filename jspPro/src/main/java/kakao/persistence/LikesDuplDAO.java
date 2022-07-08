package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;




public class LikesDuplDAO {
	

	 private LikesDuplDAO() {}
	   private static LikesDuplDAO instance = new LikesDuplDAO();
	   public static LikesDuplDAO getInstance() {
	      return instance;
	   }
	   //회원 id를 받아와서 비교
	   public int  likesDupl(Connection conn,String id,int e_num ) throws SQLException, NamingException {
			
		   int resultCount=0;
		   // Connection conn = DBconn.getConnection();
		   PreparedStatement pstmt = null;
		    		
		    String sql =	 " select count(*)"
		    		+ " from em_like "
		    		+ " where li_id=? AND li_num=?";
		    		
		    		
		    		
		    		       
		    try{
		    	
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, id);
		    	pstmt.setInt(2, e_num);
		    	
		        ResultSet rs =  pstmt.executeQuery();
		    	
		        resultCount = rs.getInt(1);
		    	 
		        
		       
		        
		        pstmt.close();
		        rs.close();
		        conn.close();
		    }catch(Exception e){
		    	e.printStackTrace();
		    }
	   
	   return resultCount;
	   }
}
	  
