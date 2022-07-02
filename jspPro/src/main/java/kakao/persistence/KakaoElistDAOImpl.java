package kakao.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import kakao.domain.KakaoElistDTO;
import kakao.domain.ReplyBoardDTO;

public interface KakaoElistDAOImpl {

   // 1. 글목록 : 페이징 처리 X
   List<KakaoElistDTO> selectList(Connection con) throws SQLException;

   

}