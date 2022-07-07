package kakao.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.KakaoEimgDTO;
import kakao.domain.KakaoElistDTO;
import kakao.service.KakaoEimgService;

public class KakaoTestHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		KakaoEimgService kakaoEimgService = KakaoEimgService.getInstance();
		Map<KakaoElistDTO, List<KakaoEimgDTO>> emap = kakaoEimgService.select();
		request.setAttribute("emap", emap);
		HttpSession session = request.getSession();
		
		String email = (String)session.getAttribute("email");
		
		if( email != null ) System.out.println(email);
		
		return "/pages/new/new_kakao2.jsp";

	}

}