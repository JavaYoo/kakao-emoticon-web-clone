package kakao.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import kakao.domain.ReplyBoardDTO;

public interface IReplyBoard {

   List<ReplyBoardDTO> selectList(Connection con) throws SQLException;

   int insert( Connection con, ReplyBoardDTO dto) throws SQLException;

   int updateReadCount( Connection con, int qa_seq) throws SQLException;

   ReplyBoardDTO selectOne( Connection con, int qa_seq) throws SQLException;

   int updateRefStep( Connection con, int parentRef, int parentStep) throws SQLException;

   int delete(Connection con, int qa_seq) throws SQLException;
   
   int update(Connection con, int qa_seq, String qa_title, String qa_content) throws SQLException;

}