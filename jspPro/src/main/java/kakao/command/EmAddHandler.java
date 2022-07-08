package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.EmAdd_CtDTO;
import kakao.service.EmAddService;

public class EmAddHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		EmAddService listService = EmAddService.getInstance();
		
		List<EmAdd_CtDTO> catgList = listService.selectCatgList();
		request.setAttribute("catgList", catgList);
		
		return "/pages/add_delete/em_add.jsp";
	}

}
