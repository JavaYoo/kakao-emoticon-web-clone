package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import com.util.JdbcUtil;

import kakao.domain.KakaoLoginDTO;

public class KakaoLoginDAO implements KakaoLoginDAOImpl {

	// 1. 싱글톤
	public KakaoLoginDAO() {
	}

	private static KakaoLoginDAO instance = new KakaoLoginDAO();

	public static KakaoLoginDAO getInstance() {
		return instance;
	}

	@Override
	public ArrayList<KakaoLoginDTO> loginCheck(String id, String pwd , Connection con) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * "
						+ "from em_member "
						+ "where m_id = '?' , m_pwd = '?' ";
		

		ArrayList<KakaoLoginDTO> list = null;

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString( 1 , id );
			pstmt.setString( 2 , pwd );
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<KakaoLoginDTO>();
				KakaoLoginDTO memberDto = null;
				do {
					memberDto = new KakaoLoginDTO();

					
					memberDto.setM_id(rs.getString("m_id"));
					memberDto.setM_pwd(rs.getString("m_pwd"));
					memberDto.setM_nn(rs.getString("m_nn"));
					memberDto.setM_pimg(rs.getString("m_pimg"));
					
					//pstmt.setInt(1, memberDto.getEl_num() );
					
					
					list.add(memberDto);
					
				} while (rs.next());
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return list;

	}

}