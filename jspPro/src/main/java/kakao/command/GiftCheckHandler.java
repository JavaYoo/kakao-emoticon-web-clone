package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.service.GiftCheckService;


public class GiftCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int gb_emnum = Integer.parseInt(request.getParameter("gb_emnum"));
		String gb_sendid = request.getParameter("gb_sendid");
		String gb_getid = request.getParameter("gb_getid");
				
		
		System.out.println("GiftCheck 핸들러 호출");
		
		GiftCheckService giftCheckService = GiftCheckService.getInstance();
		int rowCount = giftCheckService.buyCheck(gb_emnum, gb_sendid, gb_getid);
		System.out.println("buyCheck 메소드 호출");
		
		
		return "/kview/view_buyCheck.jsp?rowCount="+ rowCount;
	}

}
