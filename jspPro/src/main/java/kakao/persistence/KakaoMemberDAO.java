package kakao.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import kakao.domain.KakaoMemberDTO;

public interface KakaoMemberDAO {

	List<KakaoMemberDTO> selectList(Connection con) throws SQLException;

	KakaoMemberDTO loginCheck(String id, String pwd, Connection con) throws SQLException;

	

}