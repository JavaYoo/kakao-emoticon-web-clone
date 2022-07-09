package kakao.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.EListImgDTO;

public class EListImgDAO {

	// 1. 싱글톤
	private EListImgDAO() {}
	private static EListImgDAO instance = new EListImgDAO();
	public static EListImgDAO getInstance() {
		return instance;
	}


	public List<EListImgDTO> selectEimgList(Connection conn) throws SQLException, NamingException {

		ArrayList<EListImgDTO>  eimgList = null;
		//Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = null;

		String sql = "SELECT el_name, ei_path "
						+ "FROM em_elist JOIN em_eimg ON el_num = ei_num";
		String el_name, ei_path;

		try{

			pstmt = conn.prepareStatement(sql);
			ResultSet rs =  pstmt.executeQuery();

			if( rs.next() ){
				eimgList = new ArrayList<EListImgDTO>();
				do{
					el_name = rs.getString("el_name");
					ei_path = rs.getString("ei_path");

					EListImgDTO dto = new EListImgDTO(el_name, ei_path);
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
