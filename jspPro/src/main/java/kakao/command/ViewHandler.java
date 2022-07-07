package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.EimgDTO;
import kakao.domain.ElistDTO;
import kakao.service.ViewService;

public class ViewHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String pnum = request.getParameter("el_num");
		int el_num;

		if (pnum == null)
			el_num = -1;
		else
			el_num = Integer.parseInt(pnum);

		
		ViewService viewService = ViewService.getInstance();
		List<ElistDTO> eList = viewService.selectEmoInfo(el_num);
		List<EimgDTO> eImgList = viewService.selectEmoImg(el_num);

		request.setAttribute("eList", eList);
		request.setAttribute("eImgList", eImgList);
		System.out.println("viewHandler 호출됨");
		// 포워딩
		return "/kview/view.jsp";
	}

}
