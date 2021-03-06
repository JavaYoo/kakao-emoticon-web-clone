package kakao.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.PurchasesDTO;


public class PurchasesDAO {
	

	 private PurchasesDAO() {}
	   private static PurchasesDAO instance = new PurchasesDAO();
	   public static PurchasesDAO getInstance() {
	      return instance;
	   }
	   //회원 id를 받아와서 비교
	   public List<PurchasesDTO> selectPurchasesList(Connection conn,String id ) throws SQLException, NamingException {
			
		   ArrayList<PurchasesDTO>  PurchasesList = null;
		   // Connection conn = DBconn.getConnection();
		   PreparedStatement pstmt = null;
		    		
		    String sql =	 "select a.bl_id, a.bl_seq ,a.bl_payway,a.bl_num,a.bl_date,b.el_price,a.bl_state,b.el_name,b.el_maker,b.el_stopimg"
				    		+ " from em_buylist a"
				    		+ " inner join em_elist b "
				    		+ " on a.bl_num=b.el_num"
				    		+ " where bl_id=? "
				    		+ " ORDER BY a.bl_date DESC";
		    		       
		    
		    try{
		    	
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, id);
		        ResultSet rs =  pstmt.executeQuery();
		    	
		         String bl_id;
		         int bl_seq;
		    	 String bl_payway;
		    	 int bl_num;
		    	 Date bl_date;
		    	 int el_price;
		    	 String bl_state;
		    	 String el_name;
		    	 String el_maker;
		    	 String el_stopimg;
		        
		        if( rs.next() ){
		        	PurchasesList = new ArrayList<PurchasesDTO>();
		        	do{
		        		bl_id=rs.getString("bl_id");
		        		bl_seq=rs.getInt("bl_seq");
		        		bl_payway=rs.getString("bl_payway");
		        		bl_num=rs.getInt("bl_num");
		        		bl_date=rs.getDate("bl_date");
		        		el_price=rs.getInt("el_price");
		        		bl_state=rs.getString("bl_state");
		        		el_name = rs.getString("el_name");
		        		el_maker = rs.getString("el_maker");
		        		el_stopimg =rs.getString("el_stopimg");
		        	
		        		
		        		PurchasesDTO dto=new PurchasesDTO(bl_id, bl_seq , bl_payway, bl_num, bl_date, el_price, bl_state, el_name, el_maker, el_stopimg);
		        		PurchasesList.add(dto);
		        	}while( rs.next() );
		        } // if
		        
		        pstmt.close();
		        rs.close();
		        conn.close();
		    }catch(Exception e){
		    	e.printStackTrace();
		    }
	   
	   return PurchasesList;
	   }
}
	  
