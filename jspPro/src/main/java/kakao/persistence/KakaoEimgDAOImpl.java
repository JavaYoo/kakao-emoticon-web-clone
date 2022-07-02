package kakao.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import kakao.domain.KakaoEimgDTO;

public interface KakaoEimgDAOImpl {

   // 1. 글목록 : 페이징 처리 X
   List<KakaoEimgDTO> selectList(Connection con) throws SQLException;

}