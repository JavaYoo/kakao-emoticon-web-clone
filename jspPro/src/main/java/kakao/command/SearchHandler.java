package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.HotNewDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.domain.SearchDTO;
import kakao.service.HeaderService;
import kakao.service.SearchService;

public class SearchHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		SearchService listService = SearchService.getInstance();
		String q = request.getParameter("q");
		
		List<SearchDTO> searchList = listService.selectSearchList(q);
		request.setAttribute("searchList", searchList);
		
		List<HotNewDTO> hotNewList = listService.selectHotNewList();
		request.setAttribute("hotNewList", hotNewList);
		
		HeaderService headerService = HeaderService.getInstance();
		List<Profile_MemberDTO> memberList = headerService.selectMemberList();
		request.setAttribute("memberList", memberList);

		HttpSession session = request.getSession();

		session.setAttribute("referer", request.getRequestURI());
		
		return "/pages/header/search.jsp";
	}

}
