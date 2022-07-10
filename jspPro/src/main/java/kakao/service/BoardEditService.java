package kakao.service;

import java.sql.Connection;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.persistence.ReplyBoardDAO;

public class BoardEditService {

	private static BoardEditService instance = new BoardEditService();
	public static BoardEditService getInstance() {
		return instance;
	}
	private BoardEditService() { }

	public int update(Connection con, int qa_seq, String qa_title, String qa_content){
		Connection conn = null;
		try{
			conn = ConnectionProvider.getConnection();
			ReplyBoardDAO dao =  ReplyBoardDAO.getInstance();

			return dao.update(conn, qa_seq, qa_title, qa_content);  // 코딩 

		}catch(Exception e){
			throw new RuntimeException(e);
		}finally{
			JdbcUtil.close(conn);
		}
	}

}