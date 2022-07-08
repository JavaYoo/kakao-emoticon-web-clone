package mypage.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;


import mypage.domain.PurchasesDTO;
import mypage.persistence.PurchasesDAO;



public class PurchasesService {

	
	 // 1. 싱글톤
	   private PurchasesService() {}
	   private static PurchasesService instance = new PurchasesService();
	   public static PurchasesService getInstance() {
		   if(instance==null) {
			   instance=new PurchasesService();
		   }
	      return instance;
	   }
	   
	   public List<PurchasesDTO> selectPurchasesList(String id){
	      //
	      Connection con = null;
	       try {
	         con = ConnectionProvider.getConnection();
	         PurchasesDAO dao = PurchasesDAO.getInstance();
	         List<PurchasesDTO> list = null;
	         list = dao.selectPurchasesList(con,id);
	         return list;
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }
}
