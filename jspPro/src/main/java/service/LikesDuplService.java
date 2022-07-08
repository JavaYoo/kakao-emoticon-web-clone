package mypage.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;


import mypage.persistence.LikesDuplDAO;

public class LikesDuplService {

	 // 1. 싱글톤
	   private LikesDuplService() {}
	   private static LikesDuplService instance = new LikesDuplService();
	   public static LikesDuplService getInstance() {
		   if(instance==null) {
			   instance=new LikesDuplService();
		   }
	      return instance;
	   }
	
	   public int  likesDupl(String id,int e_num){
		      //
		      Connection con = null;
		       try {
		         con = ConnectionProvider.getConnection();
		         LikesDuplDAO dao = LikesDuplDAO.getInstance();
		        int count=0;
		        count = dao.likesDupl(con,id,e_num);
		         return count;
		      } catch (NamingException | SQLException e) { 
		         //e.printStackTrace();  syso("ListService.select() 에러 : ")
		         throw new RuntimeException(e);
		      } finally {
		         JdbcUtil.close(con);
		      }
		   }
	   
	   
}
