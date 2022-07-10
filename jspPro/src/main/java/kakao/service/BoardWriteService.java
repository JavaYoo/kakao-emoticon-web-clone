package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.ReplyBoardDTO;
import kakao.persistence.ReplyBoardDAO;

public class BoardWriteService {

   private BoardWriteService() {}
   private static BoardWriteService instance = new BoardWriteService();
   public static BoardWriteService getInstance() {
      return instance;
   }

   public int write( kakao.domain.ReplyBoardDTO dto ){
      Connection con = null;
      int rowCount = 0;
      try {
         con = ConnectionProvider.getConnection();
         kakao.persistence.ReplyBoardDAO dao = kakao.persistence.ReplyBoardDAO.getInstance();

         con.setAutoCommit(false); 
         dao.updateRefStep( con, dto.getQa_ref() , dto.getQa_step() -1 );
         rowCount = dao.insert(con, dto);
         con.commit();
      } catch (NamingException | SQLException e) {
         JdbcUtil.rollback(con);
         throw new RuntimeException(e);
      } finally {
         JdbcUtil.close(con);
      }
      return rowCount;
   }

}