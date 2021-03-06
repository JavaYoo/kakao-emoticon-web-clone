package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.CatgDTO;
import kakao.domain.EcatgCatgDTO;
import kakao.domain.ElistEcatgDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.service.HeaderService;
import kakao.service.ListCatgService;
import kakao.service.ListEcatgCatgService;
import kakao.service.ListElistEcatgService;

public class StyleHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ListCatgService catgService = ListCatgService.getInstance();
		List<CatgDTO> catgList = catgService.selectCatgList();
		request.setAttribute("catgList", catgList);

		ListEcatgCatgService ecatgCatgService = ListEcatgCatgService.getInstance();
		List<EcatgCatgDTO> ecatgCatgList = ecatgCatgService.selectEcatgCatgList();
		request.setAttribute("ecatgCatgList", ecatgCatgList);

		ListElistEcatgService elistEcatgService = ListElistEcatgService.getInstance();
		List<ElistEcatgDTO> elistEcatgList = elistEcatgService.selectElistEcatgList();
		request.setAttribute("elistEcatgList", elistEcatgList);
		
		HeaderService listService = HeaderService.getInstance();
		List<Profile_MemberDTO> memberList = listService.selectMemberList();
		request.setAttribute("memberList", memberList);
		
		HttpSession session = request.getSession();
		session.setAttribute("referer" , request.getRequestURI()  );

		// 포워딩
		return "/pages/style/style.jsp";
	} // process

} // class
