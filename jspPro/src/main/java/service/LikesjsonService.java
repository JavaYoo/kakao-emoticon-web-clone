package mypage.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import mypage.domain.LikesDTO;
import mypage.persistence.LikesDAO;


public class LikesjsonService {

	
	 // 1. 싱글톤
	   private LikesjsonService() {}
	   private static LikesjsonService instance = new LikesjsonService();
	   public static LikesjsonService getInstance() {
		   if(instance==null) {
			   instance=new LikesjsonService();
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
