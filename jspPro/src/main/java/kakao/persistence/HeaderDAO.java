package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.HotDTO;
import kakao.domain.Profile_MemberDTO;

public class HeaderDAO {
	private HeaderDAO() {}
	private static HeaderDAO instance = new HeaderDAO();
	public static HeaderDAO getInstance() {
		return instance;
	}
	
	
	public List<Profile_MemberDTO> selectMemberList(Connection con) throws SQLException {

		String sql = "SELECT m_id, m_nn, m_pimg "
				+ "FROM em_member ";

		ArrayList<Profile_MemberDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<Profile_MemberDTO>();
				Profile_MemberDTO dto = null;
				do {
					dto = new Profile_MemberDTO();
					
					dto.setM_id(rs.getString("m_id"));
					dto.setM_nn(rs.getString("m_nn"));
					dto.setM_pimg(rs.getString("m_pimg"));

					list.add(dto);
				} while (rs.next());
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return list;
	}
}
