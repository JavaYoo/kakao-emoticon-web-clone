package mypage.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;


import mypage.domain.SentDTO;
import mypage.persistence.SentDAO;




public class SentService {

	
	 // 1. 싱글톤
	   private SentService() {}
	   private static SentService instance = new SentService();
	   public static SentService getInstance() {
		   if(instance==null) {
			   instance=new SentService();
		   }
	      return instance;
	   }
	   
	   public List<SentDTO> selectPresentSentList(String id){
	      //
	      Connection con = null;
	       try {
	         con = ConnectionProvider.getConnection();
	         SentDAO dao = SentDAO.getInstance();
	         List<SentDTO> list = null;
	         list = dao.selectPresentSentList(con,id);
	         return list;
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }
}
