package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.KakaoMemberDTO;

public class KakaoMemberDAO implements KakaoMemberDAOImpl {

	// 1. 싱글톤
	private KakaoMemberDAO() {
	}

	private static KakaoMemberDAO instance = new KakaoMemberDAO();

	public static KakaoMemberDAO getInstance() {
		return instance;
	}

	@Override
	public List<KakaoMemberDTO> selectList(Connection con) throws SQLException {

		String sql = "select *  "
						+ "  from em_member ";

		ArrayList<KakaoMemberDTO> mlist = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				mlist = new ArrayList<KakaoMemberDTO>();
				KakaoMemberDTO dto = null;
				do {
					dto =  new KakaoMemberDTO();

					dto.setM_id( rs.getString("m_id") );
					dto.setM_pwd(rs.getString("m_pwd"));
					dto.setM_nn(rs.getString("m_nn"));
					dto.setM_pimg(rs.getString("m_pimg"));

					mlist.add(dto);
					
				} while ( rs.next() );
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally
		
		return mlist;

	}

}