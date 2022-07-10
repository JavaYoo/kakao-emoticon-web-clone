package kakao.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.DBconn;

import kakao.domain.ReplyBoardDTO;
import kakao.persistence.ReplyBoardDAO;

public class BoardEditHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		 if (request.getMethod().equals("GET")) { 
			
			 int qa_seq = Integer.parseInt(request.getParameter("qa_seq"));
				
				Connection con = DBconn.getConnection();
				ReplyBoardDAO dao = new ReplyBoardDAO();
				ReplyBoardDTO dto = null;
				
				try {
					dto = dao.selectOne(con, qa_seq);
					request.setAttribute("dto", dto);
				} catch (SQLException e) {
					System.out.println(">Edit.doGet() Exception..");
					e.printStackTrace();
				}

				DBconn.close();
			 
			 return "/pages/user/boardEdit.jsp";
			 
	        } else if (   request.getMethod().equals("POST")   )  {  // post 방식 요청
	        	request.setCharacterEncoding("UTF-8");
	    		
	    		int qa_seq = Integer.parseInt(request.getParameter("qa_seq"));

	            String qa_id = request.getParameter("email");
	            String qa_class = request.getParameter("qa_class");
	            String qa_title = request.getParameter("qa_title");
	            String qa_content = request.getParameter("qa_content");
	            int qa_lock = Integer.parseInt(request.getParameter("qa_lock"));

	            ReplyBoardDTO dto = new ReplyBoardDTO();
	            dto.setQa_id(qa_id);
	            dto.setQa_class(qa_class);
	            dto.setQa_title(qa_title);
	            dto.setQa_content(qa_content);
	            dto.setQa_lock(qa_lock);

	            //2. insert(dto);
	            Connection con = DBconn.getConnection();
	            ReplyBoardDAO dao = new ReplyBoardDAO();
	            int rowCount = 0;
	            try {
					rowCount = dao.update(con, qa_seq, qa_title, qa_content);
	            } catch (SQLException e){
	                System.out.println("Edit.java doPost() Exception..");
	                e.printStackTrace();
	            }
	            DBconn.close();
	    		
	    		String contextPath = request.getContextPath();
	            String location = contextPath + "/pages/user/boardView.do?qa_seq=" + qa_seq;

	            if (rowCount == 1) location += "&edit=success";
	            else                       location += "&edit=fail";
	            response.sendRedirect(location);
	            
	        } else { // PUT, DELETE , UPDATE 등등
	            response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
	        }

	        return null;

	}

}
