package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.service.KakaoLoginService;

public class KakaoLoginHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		if (request.getMethod().equals("GET")) { // get방식 새 게시글 작성 write.jsp 포워딩
			return "/pages/login/login_kakao.jsp";
		} else if (request.getMethod().equals("POST")) { // post 방식 요청

			String id = request.getParameter("email");
			String pwd = request.getParameter("password");

			KakaoLoginService login = KakaoLoginService.getInstance();
			int rowcount = login.loginCheck(id, pwd);

			System.out.println("들어오냐");
			
			if ( rowcount == 1) {

				HttpSession session = request.getSession();

				session.setAttribute("email", id);
				session.setAttribute("password", pwd);

				System.out.println(" 로그인 성공 ! ");
				
				response.sendRedirect("../new/new_kakao.do");
				
			}else {
				System.out.println(" 로그인 실패 ! ");
				return "/pages/login/login_kakao.jsp";
			}

		} else { // PUT, DELETE , UPDATE 등등
            response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
        }

		return null;

	}
}