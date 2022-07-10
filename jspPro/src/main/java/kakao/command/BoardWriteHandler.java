package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.ReplyBoardDTO;
import kakao.service.BoardWriteService;

public class BoardWriteHandler implements CommandHandler{

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
      if( request.getMethod().equals("GET") ) {
         return  "/pages/user/boardWrite.jsp";
      }else if(request.getMethod().equals("POST") ) {  
         String qa_id = request.getParameter("qa_id");
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
         
         // 답글일 경우에는 write.do?num=12&ref=12&step=0&depth=1
         String parentQa_seq = request.getParameter("qa_seq");
         if ( parentQa_seq == null ) { // 새글
        	 dto.setQa_step(0);
        	 dto.setQa_depth(0);
         }else {   // 답글
        	 int parentQa_ref = Integer.parseInt( request.getParameter("qa_ref") );
             int parentQa_step = Integer.parseInt( request.getParameter("qa_step") );
             int parentQa_depth = Integer.parseInt( request.getParameter("qa_depth") );
             
             dto.setQa_ref(parentQa_ref);
             dto.setQa_step(parentQa_step + 1);
             dto.setQa_depth(parentQa_depth + 1); 
         }
         
         BoardWriteService writeService = BoardWriteService.getInstance();
         int rowCount = writeService.write(dto);
         
         if (rowCount == 1) {
            String location = "/jspPro/pages/user/board.do";
            response.sendRedirect(location);  // 포워딩 X,  리다이렉트 O
         }
         
      }else {
         response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
      }
      return null;
   }

}