package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.KakaoEimgDTO;
import kakao.domain.KakaoElistDTO;

public class KakaoElistDAOImpl implements KakaoElistDAO{

	// 1. 싱글톤
	private KakaoElistDAOImpl() {}
	private static KakaoElistDAOImpl instance = new KakaoElistDAOImpl();
	public static KakaoElistDAOImpl getInstance() {
		return instance;
	}

	@Override
	public List<KakaoElistDTO> selectList(Connection con) throws SQLException {

		String sql = "select *  "
						+ "  from em_elist "
						+ "  order by el_date desc  ";

		ArrayList<KakaoElistDTO> elist = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				elist = new ArrayList<KakaoElistDTO>();
				KakaoElistDTO dto = null;
				do {
					dto =  new KakaoElistDTO();

					dto.setEl_num( rs.getInt("el_num") );
					dto.setEl_name(rs.getString("el_name"));
					dto.setEl_maker(rs.getString("el_maker"));
					dto.setEl_date(rs.getDate("el_date"));

					elist.add(dto);
				} while ( rs.next() );
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally
		
		return elist;

	}


}