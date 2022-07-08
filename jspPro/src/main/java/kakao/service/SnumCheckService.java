package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.persistence.SnumCheckDAO;




public class SnumCheckService {

	 // 1. 싱글톤
	   private SnumCheckService() {}
	   private static SnumCheckService instance = new SnumCheckService();
	   public static SnumCheckService getInstance() {
		   if(instance==null) {
			   instance=new SnumCheckService();
		   }
	      return instance;
	   }
	
	   public int  snumcheck(String snum){
		      //
		      Connection con = null;
		       try {
		         con = ConnectionProvider.getConnection();
		         SnumCheckDAO dao = SnumCheckDAO.getInstance();
		        int snnum=0;
		        snnum = dao.snumcheck(con,snum);
		         return snnum;
		      } catch (NamingException | SQLException e) { 
		         //e.printStackTrace();  syso("ListService.select() 에러 : ")
		         throw new RuntimeException(e);
		      } finally {
		         JdbcUtil.close(con);
		      }
		   }
	   
	   
}
