package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

import domain.BuyListDTO;

public class BuyListDAO {

	   // 1. 싱글톤
	   private BuyListDAO() {}
	   private static BuyListDAO instance = new BuyListDAO();
	   public static BuyListDAO getInstance() {
	      return instance;
	   }
	   
	   public int insert(Connection con, BuyListDTO dto) throws SQLException{
		   PreparedStatement pstmt = null;
		   int rowCount = 0;
		   
		   String sql = "INSERT INTO EM_BUYLIST ("
		   		+ "bl_seq, bl_id, bl_payway, bl_num, bl_state, bl_price)"
		   		+ " VALUES"
		   		+ " (em_buyList_seq.nextval, ?, ?, ?, ?, ?)";
		   try {
			   pstmt = con.prepareStatement(sql);			   

			   pstmt.setString(1,  dto.getBl_id());
			   pstmt.setString(2, dto.getBl_payway());
			   pstmt.setInt(3, dto.getBl_num());
			   pstmt.setString(4, dto.getBl_state());
			   pstmt.setInt(5, dto.getBl_price());
			   
			   rowCount = pstmt.executeUpdate();
		   }finally {
			JdbcUtil.close(pstmt);
		}
		   
		   return rowCount;
	   }
	   
	   public int buyCheck (Connection con, int bl_num, String bl_id) throws SQLException{
		   int rowCount = 0;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   		   
		   String sql = "SELECT count(*) cnt"
		   				+ " FROM em_buylist"
		   				+ " WHERE bl_num = ? AND bl_id = ?";
		   
		   try {
			   pstmt = con.prepareStatement(sql);
			   pstmt.setInt(1, bl_num);
			   pstmt.setString(2, bl_id);
			   
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
