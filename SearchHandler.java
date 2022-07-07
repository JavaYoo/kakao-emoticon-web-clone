package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.HotNewDTO;
import kakao.domain.SearchDTO;
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
		
		return "/pages/header/search.jsp";
	}

}
