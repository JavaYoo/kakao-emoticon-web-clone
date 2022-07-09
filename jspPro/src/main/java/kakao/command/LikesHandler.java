package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.CouponsDTO;
import kakao.domain.LikesDTO;
import kakao.service.CouponsService;
import kakao.service.LikesService;






public class LikesHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		/* String id=request.getParameter("id"); */
		
		HttpSession session = request.getSession(); 
	      String id= (String) session.getAttribute("email");
		
		LikesService likesService  = LikesService.getInstance();
	      List<LikesDTO> likesList = likesService.selectLikesList(id);
	      request.setAttribute("likesList", likesList);

	      CouponsService couponsService  = CouponsService.getInstance();
	      List<CouponsDTO> couponsList = couponsService.selectCouponsList(id);
	      request.setAttribute("couponsList", couponsList);
	     
	      // 포워딩
	      return "/pages/mypage/likes.jsp";
		
	}

}
