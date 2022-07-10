package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.persistence.ReplyBoardDAO;

public class BoardDeleteService {

	private BoardDeleteService() {}
	private static BoardDeleteService instance = new BoardDeleteService();
	public static BoardDeleteService getInstance() {
		return instance;
	}

	public int deleteOne(int qa_seq) {
		Connection con = null;
		int rowCount = 0;
		try {
	         con = ConnectionProvider.getConnection();
	         ReplyBoardDAO dao = ReplyBoardDAO.getInstance();
	        
	         rowCount = dao.delete(con, qa_seq);
	      } catch (NamingException | SQLException e) {
	         JdbcUtil.rollback(con);
	         throw new RuntimeException(e);
	      }finally {
	         JdbcUtil.close(con);
	      }
	      return rowCount;
		
	}
}