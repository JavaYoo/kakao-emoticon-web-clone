package kakao.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import kakao.domain.KakaoEimgDTO;
import kakao.domain.KakaoElistDTO;

public interface KakaoEimgDAO {

   // 1. 글목록 : 페이징 처리 X
	Map<KakaoElistDTO, List<KakaoEimgDTO>> selectList(Connection con) throws SQLException;

	Map<KakaoElistDTO, List<KakaoEimgDTO>> selectList2(Connection con) throws SQLException;

	//List<KakaoElistDTO> selectLike(Connection con) throws SQLException {
	
}