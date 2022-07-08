package mypage.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypage.domain.CouponsDTO;
import mypage.domain.LikesDTO;
import mypage.service.CouponsService;
import mypage.service.LikesService;






public class LikesHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id=request.getParameter("id");
		
		LikesService likesService  = LikesService.getInstance();
	      List<LikesDTO> likesList = likesService.selectLikesList(id);
	      request.setAttribute("likesList", likesList);

	      CouponsService couponsService  = CouponsService.getInstance();
	      List<CouponsDTO> couponsList = couponsService.selectCouponsList(id);
	      request.setAttribute("couponsList", couponsList);
	     
	      // 포워딩
	      return "/mypage/likes.jsp";
		
	}

}
