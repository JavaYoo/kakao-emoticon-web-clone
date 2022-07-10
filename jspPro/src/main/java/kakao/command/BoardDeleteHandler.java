package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.service.BoardDeleteService;

public class BoardDeleteHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		if(  request.getMethod().equals("GET") ) {             
			return "/pages/user/boardDelete.jsp";         
		}else if( request.getMethod().equals("POST") ){  // post 방식요청
			int qa_seq = Integer.parseInt(request.getParameter("qa_seq"));

			BoardDeleteService service = BoardDeleteService.getInstance();
			int rowCount =  service.deleteOne(qa_seq);
			if(rowCount == 1) {
				String location = "/jspPro/pages/user/board.do";
				response.sendRedirect(location);
			}

		}else {  // PUT, DELETE, UPDATE 등등
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED  );
		}

		return null;
	}

}
