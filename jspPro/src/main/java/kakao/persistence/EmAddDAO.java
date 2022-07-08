package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.EmAdd_CtDTO;
import kakao.domain.EmAdd_ListDTO;
import kakao.domain.EmAdd_ctsubDTO;
import kakao.domain.EmAdd_eimgDTO;


public class EmAddDAO {
	private EmAddDAO() {}
	private static EmAddDAO instance = new EmAddDAO();
	public static EmAddDAO getInstance() {
		return instance;
	}
	
	
	public List<EmAdd_CtDTO> selectCatgList(Connection con) throws SQLException {

		String sql = "SELECT ct_main, ct_sub "
				+ "FROM em_catg ";

		ArrayList<EmAdd_CtDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<EmAdd_CtDTO>();
				EmAdd_CtDTO dto = null;
				do {
					dto = new EmAdd_CtDTO();
					
					dto.setCt_main(rs.getString("ct_main"));
					dto.setCt_sub(rs.getString("ct_sub"));

					list.add(dto);
				} while (rs.next());
			} //
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		return list;
	}
	
	
	
	public int checkName(Connection con, String emName) {
		String sql = "SELECT * FROM em_elist WHERE el_name = ? ";
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			pstmt.setString(1, emName);
			
			if (rs.next() || emName.equals("")) {
				result = 0;
			} else {
				result = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		
		return result;
	}
	
	
	public int insert_em_elist(Connection conn, EmAdd_ListDTO dto) {
		int result = 0;
		String sql = "INSERT INTO em_elist " + " (el_num, el_name, el_maker, el_price, el_date, el_mainimg, el_stopimg ) "
				+ " values " + " ( (SELECT (MAX(el_num) + 1) FROM em_elist) , ?, ? ,? , SYSDATE, ?, ? ) ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getEl_name());
			pstmt.setString(2, dto.getEl_maker());
			pstmt.setInt(3, dto.getEl_price());
			pstmt.setString(4, dto.getEl_mainimg());
			pstmt.setString(5, dto.getEl_stopimg());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.toString());
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	} 
	
	
	public int insert_em_ecatg(Connection conn, EmAdd_ctsubDTO dto) {
		int result = 0;
		String sql = "INSERT INTO em_ecatg " + " ( ec_seq, ec_num, ec_sub ) "
				+ " values " + " ( (SELECT (MAX(ec_seq) + 1) FROM em_ecatg) , (SELECT MAX(el_num) FROM em_elist), ? ) ";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getEc_sub());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.toString());
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int insert_em_eimg(Connection conn, EmAdd_eimgDTO dto) {
		int result = 0;
		
		String sql = "INSERT INTO em_eimg " + " (ei_seq, ei_num, ei_path ) "
				+ " values " + " ( (SELECT (MAX(ei_seq) + 1) FROM em_eimg) , (SELECT MAX(el_num) FROM em_elist), ? ) ";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getEi_path());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.toString());
		} finally {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	} 
	
}
