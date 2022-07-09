package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.CatgDTO;
import kakao.domain.EcatgCatgDTO;
import kakao.domain.EListImgDTO;
import kakao.domain.ElistEcatgDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.service.HeaderService;
import kakao.service.ListCatgService;
import kakao.service.ListEcatgCatgService;
import kakao.service.ListEimgService;
import kakao.service.ListElistEcatgService;

public class CategoryHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		
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
		List<EListImgDTO> eimgList = eimgService.selectEimgList();
		request.setAttribute("eimgList", eimgList);
		
		HeaderService listService = HeaderService.getInstance();
		List<Profile_MemberDTO> memberList = listService.selectMemberList();
		request.setAttribute("memberList", memberList);
		
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		session.setAttribute("referer" , request.getRequestURI()  
				+ "?ct_main=" + java.net.URLEncoder.encode(request.getParameter("ct_main")) 
				+ "&ec_sub=" + java.net.URLEncoder.encode(request.getParameter("ec_sub"))) ;
				System.out.println(  (String)session.getAttribute("referer") );
		System.out.println(  (String)session.getAttribute("referer")  );
		
		// 포워딩
		return "/pages/style/category.jsp";
	} // process

}
