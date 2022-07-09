package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.EcatgCatgDTO;
import kakao.domain.ElistEcatgDTO;
import kakao.service.ListEcatgCatgService;
import kakao.service.ListElistEcatgService;

public class HomeHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		ListEcatgCatgService ecatgCatgService  = ListEcatgCatgService.getInstance();
		List<EcatgCatgDTO> ecatgCatgList = ecatgCatgService.selectEcatgCatgList();
		request.setAttribute("ecatgCatgList", ecatgCatgList);
		
		ListElistEcatgService elistEcatgService  = ListElistEcatgService.getInstance();
		List<ElistEcatgDTO> elistEcatgList = elistEcatgService.selectElistEcatgList();
		request.setAttribute("elistEcatgList", elistEcatgList);
		
		
		return "/pages/home.jsp";
		
	}

}
