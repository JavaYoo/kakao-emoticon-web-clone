package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.HotNewDTO;
import kakao.domain.SearchDTO;


public class SearchDAO {
	private SearchDAO() {}
	private static SearchDAO instance = new SearchDAO();
	public static SearchDAO getInstance() {
		return instance;
	}
	
	public List<SearchDTO> selectSearchList(Connection con, String q) throws SQLException {

		String sql = "SELECT el_num, el_name, el_maker, el_mainimg, el_stopimg "
				+ "FROM em_elist "
				+ "WHERE replace(el_name, ' ', '') LIKE '%" + q + "%' OR replace(el_maker, ' ', '') LIKE '%" + q + "%' "
				+ "ORDER BY el_date ";

		ArrayList<SearchDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<SearchDTO>();
				SearchDTO dto = null;
				do {
					dto = new SearchDTO();
					dto.setEl_num(rs.getInt("el_num"));
					dto.setEl_name(rs.getString("el_name"));
					dto.setEl_maker(rs.getString("el_maker"));
					dto.setEl_mainimg(rs.getString("el_mainimg"));
					dto.setEl_stopimg(rs.getString("el_stopimg"));

					list.add(dto);
				} while (rs.next());
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return list;
	}
	
	public List<HotNewDTO> selectHotNewList(Connection con) throws SQLException {

		String sql = "SELECT el_num "
				+ "FROM em_elist "
				+ "WHERE TO_CHAR(el_date, 'MM') >= (TO_CHAR(SYSDATE,'MM') - 1) ";

		ArrayList<HotNewDTO> hotNewList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				hotNewList = new ArrayList<HotNewDTO>();
				HotNewDTO dto = null;
				do {
					dto = new HotNewDTO();

					dto.setEl_num(rs.getInt("el_num"));

					hotNewList.add(dto);
				} while (rs.next());
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return hotNewList;
	}

}
