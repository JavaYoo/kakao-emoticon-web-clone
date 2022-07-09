package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.service.EmailCheckService;


public class EmailCheckHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
				String m_id = request.getParameter("m_id");
		
		System.out.println("buyCheck 핸들러 호출");
		
		EmailCheckService emailCheckService = EmailCheckService.getInstance();
		int rowCount = emailCheckService.emailCheck(m_id);
		System.out.println("buyCheck 메소드 호출");
		
		/*
		 * String location = "/jspPro/kview/view_buyCheck.jsp?rowCount="+rowCount;
		 * response.sendRedirect(location); // 포워딩 X, 리다이렉트 O
		 * System.out.println(rowCount);
		 */		
		
		return "/pages/view_emailCheck.jsp?rowCount="+rowCount;
	}

}
