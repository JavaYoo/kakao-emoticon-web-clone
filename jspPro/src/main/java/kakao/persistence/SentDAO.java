package kakao.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.SentDTO;



public class SentDAO {
	

	 private SentDAO() {}
	   private static SentDAO instance = new SentDAO();
	   public static SentDAO getInstance() {
	      return instance;
	   }
	   //회원 id를 받아와서 비교
	   public List<SentDTO> selectPresentSentList(Connection conn,String id ) throws SQLException, NamingException {
			
		   ArrayList<SentDTO>  PresentSentList = null;
		   // Connection conn = DBconn.getConnection();
		   PreparedStatement pstmt = null;
		    		
		    String sql =	 " select f.gb_date,f.m_nn,f.gb_seq,f.gb_payway,f.gb_payprice,f.gb_state,c.el_name,c.el_maker,c.el_stopimg,f.gb_emnum"
		    		+ " from em_elist c"
		    		+ " inner join(    "
		    		+ "             select b.m_nn,a.gb_date,a.gb_seq,a.gb_payway,a.gb_state,a.gb_payprice,a.gb_emnum"
		    		+ "             from em_giftbox a"
		    		+ "             inner join em_member b"
		    		+ "                on a.gb_getid=b.m_id"
		    		+ "             where gb_sendid=?"
		    		+ "              )f"
		    		+ " on c.el_num=f.gb_emnum"
		    		+ " ORDER BY f.gb_date DESC";
		    		
		    		
		    		
		    		
		    		       
		    
		    try{
		    	
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, id);
		        ResultSet rs =  pstmt.executeQuery();
		    	
		      
		         Date gb_date;
		    	 String m_nn;
		    	 int gb_seq;
		    	 String gb_payway;
		    	 int gb_payprice;
		    	 String gb_state;
		    	 String el_stopimg;
		    	 String el_name;
		    	 String el_maker;
		    	 int gb_emnum;
		        
		        if( rs.next() ){
		        	PresentSentList = new ArrayList<SentDTO>();
		        	do{
		        		
		        		
		        		gb_date=rs.getDate("gb_date");
		        		m_nn=rs.getString("m_nn");
		        		gb_seq=rs.getInt("gb_seq");
		        		gb_payway=rs.getString("gb_payway");
		        		gb_payprice=rs.getInt("gb_payprice");
		        		gb_state=rs.getString("gb_state");
		        		el_stopimg=rs.getString("el_stopimg");
		        		el_name=rs.getString("el_name");
		        		el_maker=rs.getString("el_maker");
		        		gb_emnum=rs.getInt("gb_emnum");
		        	
		        		
		        		SentDTO dto=new SentDTO(gb_date, m_nn, gb_seq, gb_payway, gb_payprice, gb_state, el_stopimg, el_name, el_maker, gb_emnum);
		        		PresentSentList.add(dto);
		        	}while( rs.next() );
		        } // if
		        
		        pstmt.close();
		        rs.close();
		        conn.close();
		    }catch(Exception e){
		    	e.printStackTrace();
		    }
	   
	   return PresentSentList;
	   }
}
	  
