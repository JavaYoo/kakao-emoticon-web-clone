package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JdbcUtil;

public class EmailCheckDAO {

	   // 1. 싱글톤
	   private EmailCheckDAO() {}
	   private static EmailCheckDAO instance = new EmailCheckDAO();
	   public static EmailCheckDAO getInstance() {
	      return instance;
	   }
	   
	   
	   public int emailCheck (Connection con, String m_id) throws SQLException{
		   int rowCount = 0;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   		   
		   String sql = "SELECT count(*) cnt"
		   				+ " FROM em_member"
		   				+ " WHERE m_id = ?";
		   
		   try {
			   pstmt = con.prepareStatement(sql);
			   pstmt.setString(1, m_id);
			   
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
