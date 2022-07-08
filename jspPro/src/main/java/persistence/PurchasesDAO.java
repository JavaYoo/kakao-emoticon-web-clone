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

import mypage.domain.PurchasesDTO;


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
		    		
		    String sql =	 "select a.bl_id,a.bl_paynum,a.bl_payway,a.bl_num,a.bl_date,b.el_price,a.bl_state,b.el_name,b.el_maker,b.el_staticimg"
		    		+ " from em_buylist a"
		    		+ " inner join em_elist b "
		    		+ " on a.bl_num=b.el_num"
		    		+ " where bl_id=?";
		    		       
		    
		    try{
		    	
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, id);
		        ResultSet rs =  pstmt.executeQuery();
		    	
		         String bl_id;
		    	 int bl_paynum;
		    	 String bl_payway;
		    	 int bl_num;
		    	 Date bl_date;
		    	 int el_price;
		    	 String bl_state;
		    	 String el_name;
		    	 String el_maker;
		    	 String el_staticimg;
		        
		        if( rs.next() ){
		        	PurchasesList = new ArrayList<PurchasesDTO>();
		        	do{
		        		bl_id=rs.getString("bl_id");
		        		bl_paynum=rs.getInt("bl_paynum");
		        		bl_payway=rs.getString("bl_payway");
		        		bl_num=rs.getInt("bl_num");
		        		bl_date=rs.getDate("bl_date");
		        		el_price=rs.getInt("el_price");
		        		bl_state=rs.getString("bl_state");
		        		el_name = rs.getString("el_name");
		        		el_maker = rs.getString("el_maker");
		        		el_staticimg =rs.getString("el_staticimg");
		        	
		        		
		        		PurchasesDTO dto=new PurchasesDTO(bl_id, bl_paynum, bl_payway, bl_num, bl_date, el_price, bl_state, el_name, el_maker, el_staticimg);
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
	  
