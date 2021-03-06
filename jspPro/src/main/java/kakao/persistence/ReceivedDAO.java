package kakao.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.ReceivedDTO;

public class ReceivedDAO {

	private ReceivedDAO() {
	}

	private static ReceivedDAO instance = new ReceivedDAO();

	public static ReceivedDAO getInstance() {
		return instance;
	}

	// 회원 id를 받아와서 비교
	public List<ReceivedDTO> selectPresentReceivedList(Connection conn, String id)
			throws SQLException, NamingException {

		ArrayList<ReceivedDTO> PresentReceivedList = null;
		// Connection conn = DBconn.getConnection();
		PreparedStatement pstmt = null;

		String sql = " select f.gb_date,f.m_nn,c.el_name,c.el_maker,c.el_stopimg, f.gb_emnum " 
						+ " from em_elist c  "
						+ " inner join ( select b.m_nn,a.gb_date,a.gb_emnum  " 
						+ "     			from em_giftbox a"
						+ "      			inner join em_member b" 
						+ "      				 on a.gb_sendid=b.m_id"
						+ "        			 where gb_getid=?" 
						+ "       			 )f" 
						+ " on c.el_num=f.gb_emnum"
						+ " ORDER BY f.gb_date DESC";

		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();

			Date gb_date;
			String m_nn;
			String el_name;
			String el_maker;
			String el_stopimg;
			int gb_emnum;
			
			if (rs.next()) {
				PresentReceivedList = new ArrayList<ReceivedDTO>();
				do {

					gb_date = rs.getDate("gb_date");
					m_nn = rs.getString("m_nn");
					el_stopimg = rs.getString("el_stopimg");
					el_name = rs.getString("el_name");
					el_maker = rs.getString("el_maker");
					gb_emnum = rs.getInt("gb_emnum");

					ReceivedDTO dto = new ReceivedDTO(gb_date, m_nn, el_name, el_maker, el_stopimg, gb_emnum);
					PresentReceivedList.add(dto);
				} while (rs.next());
			} // if

			pstmt.close();
			rs.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return PresentReceivedList;
	}
}
