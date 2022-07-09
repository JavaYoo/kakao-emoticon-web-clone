package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.EimgDTO;

public class EimgDAO {

	// 1. 싱글톤
	private EimgDAO() {}
	private static EimgDAO instance = new EimgDAO();
	public static EimgDAO getInstance() {
		return instance;
	}


	public List<EimgDTO> selectEimgList(Connection conn) throws SQLException, NamingException {

		ArrayList<EimgDTO>  eimgList = null;
		//Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = null;

		String sql = "SELECT el_name, ei_path "
						+ "FROM em_elist JOIN em_eimg ON el_num = ei_num";
		String el_name, ei_path;

		try{

			pstmt = conn.prepareStatement(sql);
			ResultSet rs =  pstmt.executeQuery();

			if( rs.next() ){
				eimgList = new ArrayList<EimgDTO>();
				do{
					el_name = rs.getString("el_name");
					ei_path = rs.getString("ei_path");

					EimgDTO dto = new EimgDTO(el_name, ei_path);
					eimgList.add(dto);
				}while( rs.next() );
			} // if

			pstmt.close();
			rs.close();
			//conn.close(); 
		}catch(Exception e){
			e.printStackTrace();
		}

		return eimgList;
	}  // 

}
