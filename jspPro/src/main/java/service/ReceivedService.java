package mypage.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import mypage.domain.ReceivedDTO;
import mypage.domain.PurchasesDTO;
import mypage.persistence.PurchasesDAO;
import mypage.persistence.ReceivedDAO;



public class ReceivedService {

	
	 // 1. 싱글톤
	   private ReceivedService() {}
	   private static ReceivedService instance = new ReceivedService();
	   public static ReceivedService getInstance() {
		   if(instance==null) {
			   instance=new ReceivedService();
		   }
	      return instance;
	   }
	   
	   public List<ReceivedDTO> selectPresentReceivedList(String id){
	      //
	      Connection con = null;
	       try {
	         con = ConnectionProvider.getConnection();
	         ReceivedDAO dao = ReceivedDAO.getInstance();
	         List<ReceivedDTO> list = null;
	         list = dao.selectPresentReceivedList(con,id);
	         return list;
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }
}
