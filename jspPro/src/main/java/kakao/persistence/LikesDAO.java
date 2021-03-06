package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.LikesDTO;




public class LikesDAO {
	

	 private LikesDAO() {}
	   private static LikesDAO instance = new LikesDAO();
	   public static LikesDAO getInstance() {
	      return instance;
	   }
	   //회원 id를 받아와서 비교
	   public List<LikesDTO> selectLikesList(Connection conn,String id ) throws SQLException, NamingException {
			
		   ArrayList<LikesDTO>  LikesList = null;
		   // Connection conn = DBconn.getConnection();
		   PreparedStatement pstmt = null;
		    		
		    String sql =	 " select b.el_mainimg,b.el_stopimg,b.el_name,b.el_maker,a.li_num"
		    		+ "	from em_like a"
		    		+ "	inner join em_elist b"
		    		+ "    on a.li_num=b.el_num"
		    		+ " where a.li_id=?";
		    		       
		    try{
		    	
		    	pstmt = conn.prepareStatement(sql);
		    	pstmt.setString(1, id);
		        ResultSet rs =  pstmt.executeQuery();
		    	
		         String el_mainimg;
		         String el_stopimg;
		    	 String el_name;
		    	 String el_maker;
		    	 int li_num;
		        
		        if( rs.next() ){
		        	LikesList = new ArrayList<LikesDTO>();
		        	do{
		        		el_mainimg=rs.getString("el_mainimg");
		        		el_stopimg=rs.getString("el_stopimg");
		        		el_name=rs.getString("el_name");
		        		el_maker=rs.getString("el_maker");
		        		li_num=rs.getInt("li_num");
		        		
		        		LikesDTO dto=new LikesDTO(el_mainimg, el_stopimg, el_name, el_maker, li_num);
		        		LikesList.add(dto);
		        	}while( rs.next() );
		        } // if
		        
		        pstmt.close();
		        rs.close();
		        conn.close();
		        
		    }catch(Exception e){
		    	e.printStackTrace();
		    }finally {
		    	
		    }
	   
	   return LikesList;
	   }
}
	  
