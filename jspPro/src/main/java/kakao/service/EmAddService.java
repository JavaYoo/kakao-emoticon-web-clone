package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.EmAdd_CtDTO;
import kakao.domain.EmAdd_ListDTO;
import kakao.domain.EmAdd_ctsubDTO;
import kakao.domain.EmAdd_eimgDTO;
import kakao.persistence.EmAddDAO;
import kakao.persistence.EmDeleteDAO;

public class EmAddService {
	private EmAddService() {
	}

	private static EmAddService instance = new EmAddService();

	public static EmAddService getInstance() {
		return instance;
	}

	public List<EmAdd_CtDTO> selectCatgList() {
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			EmAddDAO dao = EmAddDAO.getInstance();
			List<EmAdd_CtDTO> catgList = null;
			catgList = dao.selectCatgList(con);
			return catgList;
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

	public int insert_em_elist(EmAdd_ListDTO dto) {
		Connection conn = null;
		int result = 0;
		try {
			conn = ConnectionProvider.getConnection();
			
			EmAddDAO dao = EmAddDAO.getInstance();

			result = dao.insert_em_elist(conn, dto);
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn); // 커넥션풀에 커넥션객체를 반환....
		}
		return result;
	}
	
	public int insert_em_ecatg(EmAdd_ctsubDTO dto) {
		Connection conn = null;
		int result = 0;
		try {
			conn = ConnectionProvider.getConnection();
			
			EmAddDAO dao = EmAddDAO.getInstance();
			
			result = dao.insert_em_ecatg(conn, dto);
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn); // 커넥션풀에 커넥션객체를 반환....
		}
		return result;
	}
	
	
	public int insert_em_eimg(EmAdd_eimgDTO dto) {
		Connection con = null;
		int result = 0;
		try {
			con = ConnectionProvider.getConnection();
			EmAddDAO dao = EmAddDAO.getInstance();
			result = dao.insert_em_eimg(con, dto);
			return result;
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
