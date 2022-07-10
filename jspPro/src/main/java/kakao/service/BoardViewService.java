package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.ReplyBoardDTO;
import kakao.persistence.ReplyBoardDAO;

public class BoardViewService {

   // 1. 싱글톤
   private BoardViewService() {}
   private static BoardViewService instance = new BoardViewService();
   public static BoardViewService getInstance() {
      return instance;
   }

   // 
   public ReplyBoardDTO selectOne(int qa_seq){
      //
      Connection con = null;
      try {
         con = ConnectionProvider.getConnection();
         ReplyBoardDAO dao = ReplyBoardDAO.getInstance();
con.setAutoCommit(false);         
         dao.updateReadCount(con, qa_seq);
         ReplyBoardDTO dto = null;
         dto = dao.selectOne(con, qa_seq);
con.commit();         
         return dto;
      } catch (NamingException | SQLException e) { 
JdbcUtil.rollback(con);         
         throw new RuntimeException(e);
      } finally {
         JdbcUtil.close(con);
      }
   }
}

