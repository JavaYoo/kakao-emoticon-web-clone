package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.ReplyBoardDTO;
import kakao.service.BoardViewService;

public class BoardViewHandler implements CommandHandler{

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

      int qa_seq = Integer.parseInt( request.getParameter("qa_seq") );
      
      BoardViewService contentService = BoardViewService.getInstance();
      ReplyBoardDTO dto = contentService.selectOne(qa_seq);

      request.setAttribute("dto", dto);

      return "/pages/user/boardView.jsp";
   }

}