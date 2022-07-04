package kakao.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.KakaoEimgDTO;
import kakao.domain.KakaoElistDTO;
import kakao.service.KakaoEimgService;

public class KakaoNewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		KakaoEimgService kakaoEimgService = KakaoEimgService.getInstance();
		Map<KakaoElistDTO, List<KakaoEimgDTO>> emap = kakaoEimgService.select();
		request.setAttribute("emap", emap);

		
		return "/pages/new/new_kakao.jsp";

	}

}
