package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.HotNewDTO;
import kakao.domain.SearchDTO;
import kakao.persistence.HotDAO;
import kakao.persistence.SearchDAO;


public class SearchService {
	private SearchService() {}
	private static SearchService instance = new SearchService();
	public static SearchService getInstance() {
		return instance;
	}
	
	public List<SearchDTO> selectSearchList(String q) {
		Connection con = null;
		List<SearchDTO> list = null;
		
		try {
			con = ConnectionProvider.getConnection();
			SearchDAO dao = SearchDAO.getInstance();
			list = dao.selectSearchList(con, q);
			
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JdbcUtil.close(con);
		}
		return list;
	}
	
	public List<HotNewDTO> selectHotNewList() {
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			HotDAO dao = HotDAO.getInstance();
			List<HotNewDTO> hotNewList = null;
			hotNewList = dao.selectHotNewList(con);
			return hotNewList;
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
