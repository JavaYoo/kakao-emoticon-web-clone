package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.ReplyBoardDTO;
import kakao.service.ListService;

public class ListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ListService listService = ListService.getInstance();
		List<ReplyBoardDTO> list = listService.select();

		request.setAttribute("list", list);
		request.setAttribute("pageBlock", "[1] 2 3 4 5 6 7 8 9 10 >");

		return "/days10/replyboard/list.jsp";

	}

}
