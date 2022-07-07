package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.EimgDTO;
import kakao.domain.ElistDTO;
import kakao.persistence.ViewDAO;

public class ViewService {
	 
	// 1. 싱글톤
	private ViewService() {}    
	private static ViewService instance = null;   
	public static ViewService getInstance() {  
		if(   instance == null  ) {
			instance = new ViewService();
		}
		return instance;
	}

	
	public List<ElistDTO> selectEmoInfo(int el_num){
		Connection con = null;
 		try {
			con = ConnectionProvider.getConnection();
			ViewDAO dao = ViewDAO.getInstance();
			List<ElistDTO> list = null;
			list = dao.selectEmoInfo(con, el_num);
			return list;
		} catch (NamingException | SQLException e) {  
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}

	public List<EimgDTO> selectEmoImg(int el_num){
		Connection con = null;
 		try {
			con = ConnectionProvider.getConnection();
			ViewDAO dao = ViewDAO.getInstance();
			List<EimgDTO> list = null;
			list = dao.selectEmoImg(con, el_num);
			return list;
		} catch (NamingException | SQLException e) {  
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
} // class
