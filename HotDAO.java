package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.HotDTO;
import kakao.domain.HotNewDTO;
import kakao.domain.Profile_MemberDTO;

public class HotDAO {
	private HotDAO() {}
	private static HotDAO instance = new HotDAO();
	public static HotDAO getInstance() {
		return instance;
	}
	
	public List<HotDTO> selectHotList(Connection con) throws SQLException {

		String sql = "SELECT NVL(t.\"count\", 0), el_num, el_name, el_maker, el_mainimg, el_stopimg "
				+ "FROM(  "
				+ "    SELECT count(li_num) \"count\", li_num  "
				+ "    FROM em_like  "
				+ "    GROUP BY li_num  "
				+ "    ORDER BY count(li_num) desc  "
				+ ") t RIGHT JOIN em_elist e ON t.li_num = e.el_num  "
				+ "ORDER BY NVL(t.\"count\", 0) desc ";

		ArrayList<HotDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<HotDTO>();
				HotDTO dto = null;
				do {
					dto = new HotDTO();
					
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
