package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.KakaoMemberDTO;

public class KakaoMemberDAOImpl implements KakaoMemberDAO {

	private KakaoMemberDTO dto;

	// 1. 싱글톤
	private KakaoMemberDAOImpl() {
	}

	private static KakaoMemberDAOImpl instance = new KakaoMemberDAOImpl();

	public static KakaoMemberDAOImpl getInstance() {
		return instance;
	}

	@Override
	public List<KakaoMemberDTO> selectList(Connection con) throws SQLException {

		String sql = "select *  " + "  from em_member ";

		ArrayList<KakaoMemberDTO> mlist = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mlist = new ArrayList<KakaoMemberDTO>();
				KakaoMemberDTO dto = null;
				do {
					dto = new KakaoMemberDTO();

					dto.setM_id(rs.getString("m_id"));
					dto.setM_pwd(rs.getString("m_pwd"));
					dto.setM_nn(rs.getString("m_nn"));
					dto.setM_pimg(rs.getString("m_pimg"));

					mlist.add(dto);

				} while (rs.next());
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return mlist;

	}

	@Override
	public KakaoMemberDTO loginCheck(String id, String pwd, Connection con) throws SQLException {

		String sql = "select *  " 
					+ "  from em_member "
					+ " where m_id = '" + id + "' m_pwd = '" + pwd + "' ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString( 1, id);
			pstmt.setString( 2, pwd);
			rs = pstmt.executeQuery();
			if (rs.next()) {

				do {

					id = rs.getString("m_id");
					pwd = rs.getString("m_pwd");
					String nn = rs.getString("m_nn");
					String pimg = rs.getString("m_pimg");

					dto = new KakaoMemberDTO(id, pwd, nn, pimg);

				} while (rs.next());
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return dto;

	}

}