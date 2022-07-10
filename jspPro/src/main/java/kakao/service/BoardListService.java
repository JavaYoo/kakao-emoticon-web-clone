package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.ReplyBoardDTO;
import kakao.persistence.ReplyBoardDAO;

public class BoardListService {

   private BoardListService() {}
   private static BoardListService instance = new BoardListService();
   public static BoardListService getInstance() {
      return instance;
   }
   
   public List<ReplyBoardDTO> select(){
      Connection con = null;
       try {
         con = ConnectionProvider.getConnection();
         ReplyBoardDAO dao = ReplyBoardDAO.getInstance();
         List<ReplyBoardDTO> list = null;
         list = dao.selectList(con);
         return list;
      } catch (NamingException | SQLException e) { 
         throw new RuntimeException(e);
      } finally {
         JdbcUtil.close(con);
      }
   }

}