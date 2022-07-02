package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.ReplyBoardDTO;
import kakao.persistence.ReplyBoardDAO;

public class WriteService {

	// 1. 싱글톤
	private WriteService() {}
	private static WriteService instance = new WriteService();
	public static WriteService getInstance() {
		return instance;
	}

	// 
	public int write( ReplyBoardDTO dto ){
		//
		Connection con = null;
		int rowCount = 0;
		try {
			con = ConnectionProvider.getConnection();
			ReplyBoardDAO dao = ReplyBoardDAO.getInstance();

			con.setAutoCommit(false); // 트랜잭션 처리   커밋, 롤백 
			// 1. 먼저) 동일한 글그룹(REF)에서 부모순번(STEP) 보다 큰것들의 STEP을 1증가
			dao.updateRefStep( con, dto.getRef() , dto.getStep() -1 );
			// 2. 
			rowCount = dao.insert(con, dto);
			//
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