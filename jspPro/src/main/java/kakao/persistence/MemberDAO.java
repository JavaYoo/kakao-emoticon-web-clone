package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.util.JdbcUtil;

import kakao.domain.MemberDTO;

public class MemberDAO {

	// 1. 싱글톤
	private MemberDAO() {}
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}

	public int addMember(Connection conn, MemberDTO dto) throws SQLException, NamingException {
		
		int rowCount = 0;
		PreparedStatement pstmt = null;
		
		String sql = "INSERT INTO em_member (m_id, m_pwd, m_nn) "
						+ "VALUES (? ,? ,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getM_id());
			pstmt.setString(2, dto.getM_pwd());
			pstmt.setString(3, dto.getM_nn());

			rowCount = pstmt.executeUpdate();
		}finally {
			JdbcUtil.close(pstmt);
		} 
		
		return rowCount;

	}  // 


}
