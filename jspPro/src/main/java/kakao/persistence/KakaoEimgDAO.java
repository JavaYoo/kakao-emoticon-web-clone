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
import kakao.domain.ReplyBoardDTO;

public class KakaoEimgDAO implements KakaoEimgDAOImpl{

	// 1. 싱글톤
	private KakaoEimgDAO() {}
	private static KakaoEimgDAO instance = new KakaoEimgDAO();
	public static KakaoEimgDAO getInstance() {
		return instance;
	}

	
	@Override
	public List<KakaoEimgDTO> selectList(Connection con) throws SQLException {

		String sql = "select * "
						+ "from em_eimg "
						+ "order by ei_seq ";

		ArrayList<KakaoEimgDTO> eimg = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				eimg = new ArrayList<KakaoEimgDTO>();
				KakaoEimgDTO dto = null;
				do {
					dto =  new KakaoEimgDTO();

					dto.setEi_seq(rs.getInt("ei_seq"));
					dto.setEi_num( rs.getInt("ei_num") );
					dto.setEi_path(rs.getString("ei_path"));

					eimg.add(dto);
				} while ( rs.next() );
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally
		
		return eimg;

	}

}