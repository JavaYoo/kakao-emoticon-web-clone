package kakao.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JdbcUtil;

import kakao.domain.ReplyBoardDTO;

public class ReplyBoardDAO implements IReplyBoard{

	public ReplyBoardDAO() {}
	private static ReplyBoardDAO instance = new ReplyBoardDAO();
	public static ReplyBoardDAO getInstance() {
		return instance;
	}

	@Override
	public List<ReplyBoardDTO> selectList(Connection con) throws SQLException {

		String sql =
				" select qa_seq, qa_id, qa_class, qa_title, qa_content, qa_wdate, qa_readed, qa_lock "
						+ " from em_qaboard "
						+ " order by qa_wdate desc ";

		ArrayList<ReplyBoardDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if ( rs.next() ) {
				list = new ArrayList<ReplyBoardDTO>();
				ReplyBoardDTO dto = null;
				do {
					dto =  new ReplyBoardDTO();

					dto.setQa_seq( rs.getInt("qa_seq") );
					dto.setQa_id( rs.getString("qa_id"));
					dto.setQa_class( rs.getString("qa_class"));
					dto.setQa_title( rs.getString("qa_title"));   
					dto.setQa_content( rs.getString("qa_content"));
					dto.setQa_wdate(rs.getDate("qa_wdate"));
					dto.setQa_readed( rs.getInt("qa_readed"));               
					dto.setQa_lock( rs.getInt("qa_lock"));         

					list.add(dto);
				} while ( rs.next() );
			} 
		} finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);         
		} // finally

		return list;
	}

	@Override
	public int insert(Connection con, ReplyBoardDTO dto) throws SQLException {
		PreparedStatement pstmt = null;
		int rowCount = 0;

		if( dto.getQa_ref() == 0 ) { 
			String sql = "insert into em_qaboard ( "
					+" qa_seq, qa_id, qa_class, qa_title, qa_content, qa_lock, qa_ref, qa_step, qa_depth) "
					+ " values "
					+" (seq_em_qaboard.nextval, ?,?,?,?,?,seq_em_qaboard.currval,?,?) ";

			try {
				pstmt = con.prepareStatement(sql);

				pstmt.setString(1, dto.getQa_id());
				pstmt.setString(2, dto.getQa_class());
				pstmt.setString(3, dto.getQa_title());
				pstmt.setString(4, dto.getQa_content());
				// pstmt.setDate(5, (Date) dto.getQa_wdate());         
				// pstmt.setInt(6, dto.getQa_readed());         
				pstmt.setInt(5, dto.getQa_lock());
				pstmt.setInt(6, dto.getQa_step());
				pstmt.setInt(7, dto.getQa_depth());

				rowCount = pstmt.executeUpdate();
			}finally {
				JdbcUtil.close(pstmt);
			} 
		}else{                             

		}
		return rowCount;
	}

	@Override
	public int updateReadCount(Connection con, int qa_seq) throws SQLException {

		String sql = "update em_qaboard "
				+" set qa_readed = qa_readed +1 "
				+" where qa_seq = ?";

		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qa_seq);
			rowCount = pstmt.executeUpdate();
		} finally {
			JdbcUtil.close(pstmt);
		}
		return rowCount;
	}

	@Override
	public ReplyBoardDTO selectOne(Connection con, int qa_seq) throws SQLException {

		String sql = "select * from em_qaboard "
				+" where qa_seq = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ReplyBoardDTO dto = null;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, qa_seq);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				dto =  new ReplyBoardDTO();

				dto.setQa_id( rs.getString("qa_id"));
				dto.setQa_class( rs.getString("qa_class"));
				dto.setQa_title( rs.getString("qa_title"));   
				dto.setQa_content( rs.getString("qa_content"));
				dto.setQa_wdate(rs.getDate("qa_wdate"));
				dto.setQa_readed( rs.getInt("qa_readed"));               
				dto.setQa_lock( rs.getInt("qa_lock"));   
				dto.setQa_ref(rs.getInt("qa_seq"));
				dto.setQa_step(rs.getInt("qa_step"));
				dto.setQa_depth(rs.getInt("qa_depth"));
			}
		}  finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}

		return dto;
	}

	@Override
	public int updateRefStep(Connection con, int parentRef, int parentStep) throws SQLException {
		String sql = "update em_qaboard "
				+ " set qa_step = qa_step + 1 "
				+ " where qa_ref=? and qa_step > ?";  

		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, parentRef);
			pstmt.setInt(2, parentStep);

			rowCount = pstmt.executeUpdate();

		}  finally {
			JdbcUtil.close(pstmt); 
		}

		return rowCount;
	}

	@Override
	public int delete(Connection con, int qa_seq) throws SQLException {
		String sql = "delete from em_qaboard "
				+ " where qa_seq = ? ";
		System.out.println(qa_seq);
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1,qa_seq);
			rowCount = pstmt.executeUpdate();

		}  finally {
			JdbcUtil.close(pstmt); 
		}

		return rowCount;
	}

	@Override
	public int update(Connection con, int qa_seq, String qa_title, String qa_content) throws SQLException {
		String sql="update em_qaboard "
				+ " set qa_title = ? "
				+ " , qa_content = ? "
				+ " where qa_seq = ? ";
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1,qa_title);
			pstmt.setString(2, qa_content);
			pstmt.setInt(3, qa_seq);
			rowCount = pstmt.executeUpdate();

		}  finally {
			JdbcUtil.close(pstmt); 
		}

		return rowCount;
	}



}