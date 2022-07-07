package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import domain.EimgDTO;
import domain.ElistDTO;

public class ViewDAO{

	// 1. 싱글톤
	private ViewDAO() {}
	private static ViewDAO instance = new ViewDAO();
	public static ViewDAO getInstance() {
		return instance;
	}
 
	// 1. 이모티콘 상세 정보 목록
	//이모티콘 이름, 제작자, 가격, 메인이미지
	public List<ElistDTO> selectEmoInfo(Connection conn, int el_num) throws SQLException, NamingException {
		ArrayList<ElistDTO>  eList = null; 
		PreparedStatement pstmt = null;

		//String sql = "SELECT el_name, el_maker, el_price, el_mainimg FROM em_elist WHERE el_num = 1";
		String sql = "SELECT el_name, el_maker, el_price, el_mainimg FROM em_elist WHERE el_num = ?";
		

		try{
			pstmt = conn.prepareStatement(sql); 
			pstmt.setInt(1, el_num);
			ResultSet rs =  pstmt.executeQuery();
			
			String el_name;
			String el_maker;
			int el_price;
			String el_mainimg;
			
			if( rs.next() ){
				eList = new ArrayList<ElistDTO>();
				do{
					el_name = rs.getString("el_name");
					el_maker = rs.getString("el_maker");
					el_price = rs.getInt("el_price");
					el_mainimg = rs.getString("el_mainimg");

					ElistDTO dto = new ElistDTO(el_name, el_maker, el_price, el_mainimg);
					eList.add(dto);
				}while( rs.next() );
			} // if

			pstmt.close();
			rs.close();
			
			// conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		return eList;
	}  // 
	
	// 2. 이모티콘 상세 이미지 목록
	public List<EimgDTO> selectEmoImg(Connection conn, int el_num) throws SQLException, NamingException {
		ArrayList<EimgDTO>  eImgList = null; 
		PreparedStatement pstmt = null;

		//String sql = "SELECT ei_path FROM em_eimg WHERE ei_num = 130";
		String sql = "SELECT ei_path FROM em_eimg WHERE ei_num = ?";

		try{
			pstmt = conn.prepareStatement(sql);	
			pstmt.setInt(1, el_num);		
			ResultSet rs =  pstmt.executeQuery();

			String ei_path;
			
			if( rs.next() ){
				eImgList = new ArrayList<EimgDTO>();
				do{
					ei_path = rs.getString("ei_path");

					EimgDTO dto = new EimgDTO(ei_path);
					eImgList.add(dto);
				}while( rs.next() );
			} // if

			pstmt.close();
			rs.close();
			
			// conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		return eImgList;
	}  // 


} // class
