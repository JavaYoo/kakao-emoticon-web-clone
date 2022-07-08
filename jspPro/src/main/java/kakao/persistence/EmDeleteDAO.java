package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.EmDeleteDTO;

public class EmDeleteDAO {
	private EmDeleteDAO() {}
	private static EmDeleteDAO instance = new EmDeleteDAO();
	public static EmDeleteDAO getInstance() {
		return instance;
	}
	
	public List<EmDeleteDTO> selectDeleteList(Connection con) throws SQLException {

		String sql = "SELECT el_num, el_name "
				+ "FROM em_elist "
				+ "ORDER BY el_num ";

		ArrayList<EmDeleteDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<EmDeleteDTO>();
				EmDeleteDTO dto = null;
				do {
					dto = new EmDeleteDTO();
					
					dto.setEl_num(rs.getInt("el_num"));
					dto.setEl_name(rs.getString("el_name"));

					list.add(dto);
				} while (rs.next());
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return list;
	}
	
	
	
	public int emDelete(Connection con, int el_num) throws SQLException { 
	      PreparedStatement pstmt = null;
	      try {
	         pstmt = con.prepareStatement(
	               "DELETE FROM em_elist "
	                     + " WHERE el_num = ? ");
	         pstmt.setInt(1, el_num);
	         return pstmt.executeUpdate();
	      } finally {
	         JdbcUtil.close(pstmt);
	      }
	   }
	
	/*
	public List<EmDelete_PathDTO> emDelete_filePath(Connection con, int el_num) throws SQLException { 
		String sql = "SELECT el_mainimg, el_stopimg "
				+ " FROM em_elist  "
				+ " WHERE el_num = ?";

		ArrayList<EmDelete_PathDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			list = new ArrayList<EmDelete_PathDTO>();
				EmDelete_PathDTO dto = null;
				do {
					dto = new EmDelete_PathDTO();
					
					pstmt.setInt(1, el_num);
					
					dto.setEl_mainimg(rs.getString("el_mainimg"));
					dto.setEl_stopimg(rs.getString("el_stopimg"));

					list.add(dto);
				} while (rs.next());
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return list;
	}
	*/
}
