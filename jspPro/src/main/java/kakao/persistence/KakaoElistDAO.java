package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.KakaoElistDTO;
import kakao.domain.ReplyBoardDTO;

public class KakaoElistDAO implements KakaoElistDAOImpl{

	// 1. 싱글톤
	private KakaoElistDAO() {}
	private static KakaoElistDAO instance = new KakaoElistDAO();
	public static KakaoElistDAO getInstance() {
		return instance;
	}

	@Override
	public List<KakaoElistDTO> selectList(Connection con) throws SQLException {

		String sql = "select *  "
						+ "  from em_elist "
						+ "  order by el_num ASC  ";

		ArrayList<KakaoElistDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				list = new ArrayList<KakaoElistDTO>();
				KakaoElistDTO dto = null;
				do {
					dto =  new KakaoElistDTO();

					dto.setEl_num( rs.getInt("el_num") );
					dto.setEl_name(rs.getString("el_name"));
					dto.setEl_maker(rs.getString("el_maker"));
					dto.setEl_date(rs.getDate("el_date"));

					list.add(dto);
				} while ( rs.next() );
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally
		
		return list;

	}


}