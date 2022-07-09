package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.CatgDTO;
import kakao.domain.EcatgCatgDTO;

public class EcatgCatgDAO {

	// 1. 싱글톤
	private EcatgCatgDAO() {}
	private static EcatgCatgDAO instance = new EcatgCatgDAO();
	public static EcatgCatgDAO getInstance() {
		return instance;
	}


	public List<EcatgCatgDTO> selectEcatgCatgList(Connection conn) throws SQLException, NamingException {

		ArrayList<EcatgCatgDTO>  ecatgCatgList = null;
		//Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = null;

		String sql = "SELECT DISTINCT(ec_sub), ct_main "
						+ "FROM em_ecatg JOIN em_catg ON ec_sub = ct_sub ";
		String ec_sub, ct_main;

		try{

				pstmt = conn.prepareStatement(sql);
				ResultSet rs =  pstmt.executeQuery();

				if( rs.next() ){
					ecatgCatgList = new ArrayList<EcatgCatgDTO>();
					do{
						ec_sub = rs.getString("ec_sub");
						ct_main = rs.getString("ct_main");

						EcatgCatgDTO dto = new EcatgCatgDTO(ec_sub, ct_main);
						ecatgCatgList.add(dto);
					}while( rs.next() );
				} // if
				
			pstmt.close();
			rs.close();
			//conn.close(); 
		}catch(Exception e){
			e.printStackTrace();
		}

		return ecatgCatgList;
	}  // 

}
