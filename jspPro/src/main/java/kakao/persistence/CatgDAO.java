package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.CatgDTO;

public class CatgDAO {

	// 1. 싱글톤
	private CatgDAO() {}
	private static CatgDAO instance = new CatgDAO();
	public static CatgDAO getInstance() {
		return instance;
	}

	
	public List<CatgDTO> selectCatgList(Connection conn) throws SQLException, NamingException {

		ArrayList<CatgDTO>  catgList = null;
		//Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = null;

		String sql = "SELECT DISTINCT(ct_main), ct_num "
						+ "FROM em_catg "
						+ "ORDER BY ct_num ";
		String ct_main;

		try{

			pstmt = conn.prepareStatement(sql);
			ResultSet rs =  pstmt.executeQuery();

			if( rs.next() ){
				catgList = new ArrayList<CatgDTO>();
				do{
					ct_main = rs.getString("ct_main");

					CatgDTO dto = new CatgDTO(ct_main);
					catgList.add(dto);
				}while( rs.next() );
			} // if

			pstmt.close();
			rs.close();
			//conn.close(); 
		}catch(Exception e){
			e.printStackTrace();
		}

		return catgList;
	}  // 

}
