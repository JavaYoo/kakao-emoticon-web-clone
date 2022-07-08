package mypage.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypage.service.SnumCheckService;





public class SnumHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id=request.getParameter("id");
		String snum=request.getParameter("snum");
		
		SnumCheckService snumcheckService  = SnumCheckService.getInstance();
	     int  snnum = snumcheckService.snumcheck(snum);
	     request.setAttribute("snnum", snnum);
	   
	      // 메인 페이지로 ? 모달로?
	     return "/sidemenu/numbermodal.jsp";
	}

}
