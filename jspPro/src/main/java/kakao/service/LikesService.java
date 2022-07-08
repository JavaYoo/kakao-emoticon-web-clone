package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.LikesDTO;
import kakao.persistence.LikesDAO;






public class LikesService {

	
	 // 1. 싱글톤
	   private LikesService() {}
	   private static LikesService instance = new LikesService();
	   public static LikesService getInstance() {
		   if(instance==null) {
			   instance=new LikesService();
		   }
	      return instance;
	   }
	   
	   public List<LikesDTO> selectLikesList(String id){
	      //
	      Connection con = null;
	       try {
	         con = ConnectionProvider.getConnection();
	         LikesDAO dao = LikesDAO.getInstance();
	         List<LikesDTO> list = null;
	         list = dao.selectLikesList(con,id);
	         return list;
	      } catch (NamingException | SQLException e) { 
	         //e.printStackTrace();  syso("ListService.select() 에러 : ")
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtil.close(con);
	      }
	   }
}
