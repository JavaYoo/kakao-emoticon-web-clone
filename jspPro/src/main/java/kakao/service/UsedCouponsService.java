package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.UsedCouponsDTO;
import kakao.persistence.UsedCouponsDAO;






public class UsedCouponsService {

	
	 // 1. 싱글톤
	   private UsedCouponsService() {}
	   private static UsedCouponsService instance = new UsedCouponsService();
	   public static UsedCouponsService getInstance() {
		   if(instance==null) {
			   instance=new UsedCouponsService();
		   }
	      return instance;
	   }
	   
	   public List<UsedCouponsDTO> selectUsedCouponsList(String id){
	      //
	      Connection con = null;
	       try {
	         con = ConnectionProvider.getConnection();
	         UsedCouponsDAO dao = UsedCouponsDAO.getInstance();
	         List<UsedCouponsDTO> list = null;
	         list = dao.selectUsedCouponsList(con,id);
	         return list;
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }
}


