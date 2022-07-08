package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.HotDTO;
import kakao.domain.HotNewDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.persistence.HeaderDAO;
import kakao.persistence.HotDAO;

public class HotService {
	private HotService() {}
	private static HotService instance = new HotService();
	public static HotService getInstance() {
		return instance;
	}
	
	public List<HotDTO> selectHotList() {
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			HotDAO dao = HotDAO.getInstance();
			List<HotDTO> list = null;
			list = dao.selectHotList(con);
			return list;
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
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
	
	
	public List<Profile_MemberDTO> selectMemberList() {
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			HeaderDAO dao = HeaderDAO.getInstance();
			List<Profile_MemberDTO> memberList = null;
			memberList = dao.selectMemberList(con);
			return memberList;
		} catch (NamingException | SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
	
	
}
