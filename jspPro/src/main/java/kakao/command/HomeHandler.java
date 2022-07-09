package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.EcatgCatgDTO;
import kakao.domain.ElistEcatgDTO;
import kakao.domain.HotDTO;
import kakao.domain.HotNewDTO;
import kakao.domain.KakaoElistDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.service.HeaderService;
import kakao.service.HotService;
import kakao.service.KakaoEListService;
import kakao.service.ListEcatgCatgService;
import kakao.service.ListElistEcatgService;

public class HomeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ListEcatgCatgService ecatgCatgService = ListEcatgCatgService.getInstance();
		List<EcatgCatgDTO> ecatgCatgList = ecatgCatgService.selectEcatgCatgList();
		request.setAttribute("ecatgCatgList", ecatgCatgList);

		ListElistEcatgService elistEcatgService = ListElistEcatgService.getInstance();
		List<ElistEcatgDTO> elistEcatgList = elistEcatgService.selectElistEcatgList();
		request.setAttribute("elistEcatgList", elistEcatgList);

		KakaoEListService kakaoEListService = KakaoEListService.getInstance();
		List<KakaoElistDTO> newList = kakaoEListService.select();
		request.setAttribute("newList", newList);

		HeaderService listService = HeaderService.getInstance();
		List<Profile_MemberDTO> memberList = listService.selectMemberList();
		request.setAttribute("memberList", memberList);

		HotService hotListService = HotService.getInstance();
		List<HotDTO> hotList = hotListService.selectHotList();
		List<HotNewDTO> hotNewList = hotListService.selectHotNewList();

		request.setAttribute("hotList", hotList);
		request.setAttribute("hotNewList", hotNewList);

		HttpSession session = request.getSession();

		session.setAttribute("referer", request.getRequestURI());

		return "/pages/home/home.jsp";

	}

}
