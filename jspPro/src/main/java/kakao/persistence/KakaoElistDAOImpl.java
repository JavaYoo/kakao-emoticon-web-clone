package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

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

		String sql = "select el_num, el_name, el_maker, el_mainimg, el_stopimg  "
						+ "from em_elist "
						+ "where rownum <= 10 "
						+ "order by el_num desc  ";

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
					dto.setEl_mainimg(rs.getString("el_mainimg"));
					dto.setEl_stopimg(rs.getString("el_stopimg"));

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