package mypage.command;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.DBconn;

import mypage.domain.LikesDTO;
import mypage.service.LikesDuplService;
import mypage.service.LikesService;



public class LikesjsonHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id=request.getParameter("id");
		String num=request.getParameter("num");
		int e_num=Integer.parseInt(num);
		
		LikesDuplService likesduplService=LikesDuplService.getInstance();
		int check=likesduplService.likesDupl(id,e_num);
		
		if(check==1) {
			//delete
			Delete(id,e_num);
			
		}else {
			//insert
			Insert(id,e_num);
		}
		
		//좋아요 수 
		String count=Likesnum(id,e_num);
		request.getAttribute(count);
		
	      
	     
	      // 포워딩
	      return "/mypage/likesjson.jsp";
		
	}

	private String Likesnum(String id, int e_num) {
		
		String sql = " select count(*)"
				+" from em_like"
				+" where li_id=? AND li_num=?" ;
		
		String resultCount = null;
		Connection conn = DBconn.getConnection();
        PreparedStatement psmt = null;
        ResultSet rs = null;
        
        try {
			psmt = conn.prepareStatement(sql);
	        psmt.setString(1,id);
	        psmt.setInt(2,e_num);
	        rs = psmt.executeQuery();
	        resultCount = rs.getString(1);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
         
        return resultCount;
        
	}

	private void Insert(String id, int e_num) {
		String sql=" insert into em_like(seq,li_id,li_num"
				+ " values(likeseq.nextval li_id=? AND li_num=?)";
		
		Connection conn = DBconn.getConnection();
        PreparedStatement psmt = null;
        ResultSet rs = null;
        
        try {
			psmt = conn.prepareStatement(sql);
			 psmt.setString(1, id);
		      psmt.setInt(2, e_num);
		      
		      psmt.executeUpdate(sql);
		      
		      psmt.close();
		       rs.close();
		       conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
     
        
		
	}
		

	private void Delete(String id, int e_num) {
		String sql=" delete "
				+ " from em_like"
				+ " where li_id=? AND li_num=?";
		
		Connection conn = DBconn.getConnection();
        PreparedStatement psmt = null;
        ResultSet rs = null;
        
        try {
			psmt = conn.prepareStatement(sql);
			 psmt.setString(1, id);
		      psmt.setInt(2, e_num);
		      
		      psmt.executeUpdate(sql);
		      
		      psmt.close();
		       rs.close();
		       conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
     
        
		
	}

}
