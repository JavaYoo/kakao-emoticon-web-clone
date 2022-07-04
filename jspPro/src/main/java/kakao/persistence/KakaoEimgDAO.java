package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.util.JdbcUtil;

import kakao.domain.KakaoEimgDTO;
import kakao.domain.KakaoElistDTO;

public class KakaoEimgDAO implements KakaoEimgDAOImpl {

	// 1. 싱글톤
	private KakaoEimgDAO() {
	}

	private static KakaoEimgDAO instance = new KakaoEimgDAO();

	public static KakaoEimgDAO getInstance() {
		return instance;
	}

	@Override
	public Map<KakaoElistDTO, List<KakaoEimgDTO>> selectList(Connection con) throws SQLException {

		PreparedStatement pstmt1 = null;
		ResultSet rs1 = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs2 = null;
		
		String sql1 = "select *  " 
						+ "  from em_elist " 
						+ "  order by el_date desc  ";
		
		String sql2 = "select *  " 
						+ "from em_eimg " 
						+ "where ei_num = ? and ROWNUM <= 8 " 
						+ "order by ei_seq ";

		Map<KakaoElistDTO, List<KakaoEimgDTO>> emap = null;
		List<KakaoEimgDTO> eimg = null;

		try {
			pstmt1 = con.prepareStatement(sql1);
			rs1 = pstmt1.executeQuery();
			if (rs1.next()) {
				emap = new LinkedHashMap<KakaoElistDTO, List<KakaoEimgDTO>>();
				KakaoElistDTO listDto = null;
				do {
					listDto = new KakaoElistDTO();

					listDto.setEl_num(rs1.getInt("el_num"));
					listDto.setEl_name(rs1.getString("el_name"));
					listDto.setEl_maker(rs1.getString("el_maker"));
					listDto.setEl_date(rs1.getDate("el_date"));
					
					pstmt2 = con.prepareStatement(sql2);
					pstmt2.setInt(1, listDto.getEl_num() );
					rs2 = pstmt2.executeQuery();
					
					if (rs2.next()) {
						eimg = new ArrayList<KakaoEimgDTO>();
						
						KakaoEimgDTO imgDto = null;
						
						do {
							
							imgDto = new KakaoEimgDTO();

							imgDto.setEi_seq(rs2.getInt("ei_seq"));
							imgDto.setEi_num(rs2.getInt("ei_num"));
							imgDto.setEi_path(rs2.getString("ei_path"));

							eimg.add(imgDto);
							
						} while (rs2.next());
					} //
					
					emap.put(listDto, eimg);
					
				} while (rs1.next());
			} //
		} finally {
			JdbcUtil.close(pstmt1);
			JdbcUtil.close(rs1);
			JdbcUtil.close(pstmt2);
			JdbcUtil.close(rs2);
		} // finally

		return emap;

	}

}