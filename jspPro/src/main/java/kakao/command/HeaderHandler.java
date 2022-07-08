package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.Profile_MemberDTO;
import kakao.service.HeaderService;

public class HeaderHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HeaderService listService = HeaderService.getInstance();
		
		List<Profile_MemberDTO> memberList = listService.selectMemberList();

		request.setAttribute("memberList", memberList);
		
		return "/pages/header/header.jsp";
	}

}
