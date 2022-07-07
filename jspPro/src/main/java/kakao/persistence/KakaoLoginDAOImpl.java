package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

import com.util.JdbcUtil;

import kakao.domain.KakaoLoginDTO;

public class KakaoLoginDAOImpl implements KakaoLoginDAO {

	// 1. 싱글톤
	public KakaoLoginDAOImpl() {
	}

	private static KakaoLoginDAOImpl instance = new KakaoLoginDAOImpl();

	public static KakaoLoginDAOImpl getInstance() {
		return instance;
	}

	@Override
	public int loginCheck(String id, String pwd, Connection con) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int rowcount = 0;
		String sql = "select count(*) cnt " 
						+ "from em_member  " 
						+ "where m_id = ? and m_pwd = ?  ";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			rs.next();

			rowcount = rs.getInt("cnt");


		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		} // finally

		System.out.println(rowcount);
		return rowcount;

	}

}