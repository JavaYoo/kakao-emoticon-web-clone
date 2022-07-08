package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.EmDeleteDTO;
import kakao.service.EmDeleteService;


public class EmDeleteListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		EmDeleteService listService = EmDeleteService.getInstance();
		
		List<EmDeleteDTO> deleteList = listService.selectDeleteList();
		request.setAttribute("deleteList", deleteList);
		
		return "/pages/add_delete/em_delete.jsp";
	}
	
	
}
