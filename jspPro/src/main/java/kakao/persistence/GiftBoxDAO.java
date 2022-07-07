package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import kakao.domain.GiftBoxDTO;

public class GiftBoxDAO {

	   // 1. 싱글톤
	   private GiftBoxDAO() {}
	   private static GiftBoxDAO instance = new GiftBoxDAO();
	   public static GiftBoxDAO getInstance() {
	      return instance;
	   }
	   
	   public int insert(Connection con, GiftBoxDTO dto) throws SQLException{
		   PreparedStatement pstmt = null;
		   int rowCount = 0;
		   
		   String sql = "INSERT INTO EM_GIFTBOX ("
		   		+ "gb_seq, gb_sendid, gb_getid, gb_payway, gb_state, gb_emnum, gb_payprice)"
		   		+ " VALUES"
		   		+ " (em_giftbox_seq.nextVal, ?, ?, ?, ?, ?, ?)";
		   
		   try {
			   pstmt = con.prepareStatement(sql);	   

			   pstmt.setString(1,  dto.getGb_sendid());
			   pstmt.setString(2, dto.getGb_getid());
			   pstmt.setString(3, dto.getGb_payway());
			   pstmt.setString(4, dto.getGb_state());
			   pstmt.setInt(5, dto.getGb_enum());
			   pstmt.setInt(6, dto.getGb_payprice());
			   
			   rowCount = pstmt.executeUpdate();
		   }finally {
			JdbcUtil.close(pstmt);
		}
		   
		   return rowCount;
	   }
	   
		/* 미구현 giftCheck */
	   public int giftCheck (Connection con, int gb_emnum, String gb_sendid, String gb_getid) throws SQLException{
		   int rowCount = 0;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   		   
		   String sql = "SELECT count(*) cnt"
		   				+ " FROM (select * from em_giftbox where gb_sendid = ?)"
		   				+ " WHERE gb_getid = ? AND gb_emnum = ?";
		   
		   try {
			   pstmt = con.prepareStatement(sql);
			   pstmt.setString(1, gb_sendid);
			   pstmt.setString(2, gb_getid);
			   pstmt.setInt(3, gb_emnum);
			   
			   rs = pstmt.executeQuery();
			   rs.next();
			   rowCount = rs.getInt("cnt");
			   
		   }catch(Exception e){
				e.printStackTrace();
			}finally {
		        JdbcUtil.close(pstmt);
		        JdbcUtil.close(rs);
			}
		   return rowCount;
	   }
}
