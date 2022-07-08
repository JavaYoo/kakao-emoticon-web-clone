package kakao.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import kakao.domain.Profile_MemberDTO;
import kakao.persistence.HeaderDAO;

public class HeaderService {
	private HeaderService() {}
	private static HeaderService instance = new HeaderService();
	public static HeaderService getInstance() {
		return instance;
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
