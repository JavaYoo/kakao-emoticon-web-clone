package kakao.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import kakao.domain.EcatgCatgDTO;
import kakao.domain.ElistEcatgDTO;

public class ElistEcatgDAO {

	// 1. 싱글톤
	private ElistEcatgDAO() {}
	private static ElistEcatgDAO instance = new ElistEcatgDAO();
	public static ElistEcatgDAO getInstance() {
		return instance;
	}


	public List<ElistEcatgDTO> selectElistEcatgList(Connection conn) throws SQLException, NamingException {

		ArrayList<ElistEcatgDTO>  elistEcatgList = null;
		//Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = null;

		String sql = "SELECT el_num, el_mainimg, el_stopimg, ec_sub, el_name, el_maker, el_date, ct_main "
						+ ", CASE WHEN ( SYSDATE - el_date ) < 40  then 'true' else 'false' end new "
						+ "FROM em_elist JOIN em_ecatg ON el_num = ec_num "
						+ 						   "JOIN em_catg ON ec_sub = ct_sub "
						+ "ORDER BY el_date DESC";
		String el_mainimg, el_stopimg, ec_sub, el_name, el_maker, ct_main;
		Date el_date;
		int el_num;
		boolean newImg;

		try{
				pstmt = conn.prepareStatement(sql);
	
				ResultSet rs =  pstmt.executeQuery();
	
				if( rs.next() ){
					elistEcatgList = new ArrayList<ElistEcatgDTO>();
					do{
						el_num = rs.getInt("el_num");
						el_mainimg = rs.getString("el_mainimg");
						el_stopimg = rs.getString("el_stopimg");
						ec_sub = rs.getString("ec_sub");
						el_name = rs.getString("el_name");
						el_maker = rs.getString("el_maker");
						el_date = rs.getDate("el_date");
						ct_main = rs.getString("ct_main");
						newImg = new Boolean(rs.getString("new"));
	
						ElistEcatgDTO dto = new ElistEcatgDTO(el_num , el_mainimg, el_stopimg, ec_sub, el_name, el_maker, el_date, ct_main, newImg);
						elistEcatgList.add(dto);
					}while( rs.next() );
				} // if
		
			pstmt.close();
			rs.close();
			//conn.close(); 
		}catch(Exception e){
			e.printStackTrace();
		}

		return elistEcatgList;
	}  // 

}
