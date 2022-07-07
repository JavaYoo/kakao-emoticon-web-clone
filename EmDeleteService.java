package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.EmDeleteDTO;
import kakao.persistence.EmDeleteDAO;

public class EmDeleteService {
	private EmDeleteService() {
	}

	private static EmDeleteService instance = new EmDeleteService();

	public static EmDeleteService getInstance() {
		return instance;
	}

	public List<EmDeleteDTO> selectDeleteList() {
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			EmDeleteDAO dao = EmDeleteDAO.getInstance();
			List<EmDeleteDTO> deleteList = null;
			deleteList = dao.selectDeleteList(con);
			return deleteList;
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

	public int emDelete(int el_num) {
	       Connection conn = null;
	       int result = 0;
	       try {
	         conn = ConnectionProvider.getConnection();
	         
	         EmDeleteDAO dao =  EmDeleteDAO.getInstance();
	         
	         result = dao.emDelete(conn, el_num);
	          
	      } catch (NamingException e) {
			e.printStackTrace();
	      } catch (SQLException e) {
			e.printStackTrace();
	      } finally {
	         JdbcUtil.close(conn); // 커넥션풀에 커넥션객체를 반환....
	      }
	      return result;
	  }
}
