package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.CatgDTO;
import kakao.domain.EcatgCatgDTO;
import kakao.domain.EimgDTO;
import kakao.domain.ElistEcatgDTO;
import kakao.service.ListCatgService;
import kakao.service.ListEcatgCatgService;
import kakao.service.ListEimgService;
import kakao.service.ListElistEcatgService;

public class CategoryHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ListCatgService catgService  = ListCatgService.getInstance();
		List<CatgDTO> catgList = catgService.selectCatgList();
		request.setAttribute("catgList", catgList);
		
		ListEcatgCatgService ecatgCatgService  = ListEcatgCatgService.getInstance();
		List<EcatgCatgDTO> ecatgCatgList = ecatgCatgService.selectEcatgCatgList();
		request.setAttribute("ecatgCatgList", ecatgCatgList);
		
		ListElistEcatgService elistEcatgService  = ListElistEcatgService.getInstance();
		List<ElistEcatgDTO> elistEcatgList = elistEcatgService.selectElistEcatgList();
		request.setAttribute("elistEcatgList", elistEcatgList);
		
		ListEimgService eimgService  = ListEimgService.getInstance();
		List<EimgDTO> eimgList = eimgService.selectEimgList();
		request.setAttribute("eimgList", eimgList);
		
		// 포워딩
		return "/pages/category.jsp";
	} // process

}
