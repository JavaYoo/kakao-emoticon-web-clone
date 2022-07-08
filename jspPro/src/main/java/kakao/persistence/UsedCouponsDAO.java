package kakao.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.UsedCouponsDTO;


public class UsedCouponsDAO {
	

	 private UsedCouponsDAO() {}
	   private static UsedCouponsDAO instance = new UsedCouponsDAO();
	   public static UsedCouponsDAO getInstance() {
	      return instance;
	   }
	   //회원 id를 받아와서 비교
	   public List<UsedCouponsDTO> selectUsedCouponsList(Connection conn,String id ) throws SQLException, NamingException {
			
		   ArrayList<UsedCouponsDTO>  UsedCouponsList = null;
		   // Connection conn = DBconn.getConnection();
		   PreparedStatement pstmt = null;
		    		
		    String sql =	 " select co_name,co_usedate,co_percent"
		    		+ " from em_coupon"
		    		+ " where co_id=? AND co_usedate is not null";
		    		
		    		
		    		       
		    try{
		    	
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, id);
		        ResultSet rs =  pstmt.executeQuery();
		    	
		         String co_name;
		    	 Date co_usedate;
		    	 int co_percent;
		        
		        if( rs.next() ){
		        	UsedCouponsList = new ArrayList<UsedCouponsDTO>();
		        	do{
		        		co_name=rs.getString("co_name");
		        		co_usedate=rs.getDate("co_usedate");
		        		co_percent=rs.getInt("co_percent");
		        		
		        		UsedCouponsDTO dto=new UsedCouponsDTO(co_name, co_usedate, co_percent);
		        		UsedCouponsList.add(dto);
		        	}while( rs.next() );
		        } // if
		        
		        pstmt.close();
		        rs.close();
		        conn.close();
		    }catch(Exception e){
		    	e.printStackTrace();
		    }
	   
	   return UsedCouponsList;
	   }
}
	  
