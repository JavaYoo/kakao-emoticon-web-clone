package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.HotDTO;
import kakao.domain.HotNewDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.service.HotService;

public class HotHandler implements CommandHandler{
	
	

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HotService listService = HotService.getInstance();
		
		List<HotDTO> hotList = listService.selectHotList();
		List<HotNewDTO> hotNewList = listService.selectHotNewList();
		List<Profile_MemberDTO> memberList = listService.selectMemberList();
		
		String referer = null;

		request.setAttribute("memberList", memberList);
		request.setAttribute("hotList", hotList);
		request.setAttribute("hotNewList", hotNewList);
		
		HttpSession session = request.getSession(false);
		
		//if( session.getAttribute("email").equals(null) ) {
		
		session.setAttribute("referer" , request.getRequestURI() );
		referer = (String)session.getAttribute("referer"); 
		System.out.println(referer);
		
		//}
		
		return "/pages/hot/hot.jsp";
	}

}
