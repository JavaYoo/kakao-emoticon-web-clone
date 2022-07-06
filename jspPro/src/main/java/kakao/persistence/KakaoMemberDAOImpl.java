package kakao.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import kakao.domain.KakaoMemberDTO;

public interface KakaoMemberDAOImpl {

	List<KakaoMemberDTO> selectList(Connection con) throws SQLException;

	

}