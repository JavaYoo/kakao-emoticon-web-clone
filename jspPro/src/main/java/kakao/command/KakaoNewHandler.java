package kakao.command;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.KakaoEimgDTO;
import kakao.domain.KakaoElistDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.service.HeaderService;
import kakao.service.KakaoEimgService;

public class KakaoNewHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		KakaoEimgService kakaoEimgService = KakaoEimgService.getInstance();
		Map<KakaoElistDTO, List<KakaoEimgDTO>> emap = kakaoEimgService.select();
		request.setAttribute("emap", emap);

		HeaderService listService = HeaderService.getInstance();
		List<Profile_MemberDTO> memberList = listService.selectMemberList();
		request.setAttribute("memberList", memberList);

		HttpSession session = request.getSession();

		session.setAttribute("referer", request.getRequestURI());

		return "/pages/new/new_kakao.jsp";

	}

}