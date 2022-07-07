package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.service.BuyCheckService;


public class BuyCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int bl_num = Integer.parseInt(request.getParameter("bl_num"));
		String bl_id = request.getParameter("bl_id");
		
		System.out.println("buyCheck 핸들러 호출");
		
		BuyCheckService buyCheckService = BuyCheckService.getInstance();
		int rowCount = buyCheckService.buyCheck(bl_num, bl_id);
		System.out.println("buyCheck 메소드 호출");
		
		/*
		 * String location = "/jspPro/kview/view_buyCheck.jsp?rowCount="+rowCount;
		 * response.sendRedirect(location); // 포워딩 X, 리다이렉트 O
		 * System.out.println(rowCount);
		 */		
		
		return "/kview/view_buyCheck.jsp?rowCount="+rowCount;
	}

}
