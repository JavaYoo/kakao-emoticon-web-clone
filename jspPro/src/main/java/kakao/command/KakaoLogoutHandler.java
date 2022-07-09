package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.service.KakaoLoginService;

public class KakaoLogoutHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {


			String referer = null;

			
			HttpSession session = request.getSession();
			referer = (String)session.getAttribute("referer"); 
			session.removeAttribute("referer");
			session.removeAttribute("email");
			System.out.println(" 젭알 !!");
			response.sendRedirect(referer);

			return null;

	}
}