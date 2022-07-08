package kakao.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.CouponsDTO;



public class CouponsDAO {
	

	 private CouponsDAO() {}
	   private static CouponsDAO instance = new CouponsDAO();
	   public static CouponsDAO getInstance() {
	      return instance;
	   }
	   //회원 id를 받아와서 비교
	   public List<CouponsDTO> selectCouponsList(Connection conn,String id ) throws SQLException, NamingException {
			
		   ArrayList<CouponsDTO>  CouponsList = null;
		   // Connection conn = DBconn.getConnection();
		   PreparedStatement pstmt = null;
		    		
		    String sql =	 " select co_name,co_date,co_percent"
		    		+ " from em_coupon"
		    		+ " where co_id=? AND co_usedate is null";
		    		
		    		       
		    try{
		    	
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, id);
		        ResultSet rs =  pstmt.executeQuery();
		    	
		         String co_name;
		    	 Date co_date;
		    	 int co_percent;
		        
		        if( rs.next() ){
		        	CouponsList = new ArrayList<CouponsDTO>();
		        	do{
		        		co_name=rs.getString("co_name");
		        		co_date=rs.getDate("co_date");
		        		co_percent=rs.getInt("co_percent");
		        		
		        		CouponsDTO dto=new CouponsDTO(co_name, co_date, co_percent);
		        		CouponsList.add(dto);
		        	}while( rs.next() );
		        } // if
		        
		        pstmt.close();
		        rs.close();
		        conn.close();
		    }catch(Exception e){
		    	e.printStackTrace();
		    }
	   
	   return CouponsList;
	   }
}
	  
