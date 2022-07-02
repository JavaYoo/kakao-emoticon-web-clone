package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.KakaoEimgDTO;
import kakao.domain.KakaoElistDTO;
import kakao.service.KakaoEListService;
import kakao.service.KakaoEimgService;

public class KakaoNewHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		
		KakaoEListService kakaoElistService = KakaoEListService.getInstance();
		List<KakaoElistDTO> elist = kakaoElistService.select();
		request.setAttribute("elist", elist);
		KakaoEimgService kakaoEimgService = KakaoEimgService.getInstance();
		List<KakaoEimgDTO> eimg = kakaoEimgService.select();
		request.setAttribute("eimg", eimg);

		
		return "/pages/new_kakao.jsp";

	}

}
