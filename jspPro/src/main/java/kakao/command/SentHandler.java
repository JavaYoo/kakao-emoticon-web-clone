package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.CouponsDTO;
import kakao.domain.SentDTO;
import kakao.service.CouponsService;
import kakao.service.SentService;

public class SentHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id=request.getParameter("id");
		
		SentService sentService  = SentService.getInstance();
	      List<SentDTO> sentList = sentService.selectPresentSentList(id);
	      request.setAttribute("sentList", sentList);
	      
	      CouponsService couponsService  = CouponsService.getInstance();
	      List<CouponsDTO> couponsList = couponsService.selectCouponsList(id);
	      request.setAttribute("couponsList", couponsList);
	     
	      // 포워딩
	      return "/mypage/sent.jsp";
		
	}

}
