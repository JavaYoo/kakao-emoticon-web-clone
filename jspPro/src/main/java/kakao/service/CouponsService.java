package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.CouponsDTO;
import kakao.persistence.CouponsDAO;



public class CouponsService {

	
	 // 1. 싱글톤
	   private CouponsService() {}
	   private static CouponsService instance = new CouponsService();
	   public static CouponsService getInstance() {
		   if(instance==null) {
			   instance=new CouponsService();
		   }
	      return instance;
	   }
	   
	   public List<CouponsDTO> selectCouponsList(String id){
	      //
	      Connection con = null;
	       try {
	         con = ConnectionProvider.getConnection();
	         CouponsDAO dao = CouponsDAO.getInstance();
	         List<CouponsDTO> list = null;
	         list = dao.selectCouponsList(con,id);
	         return list;
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }
}
