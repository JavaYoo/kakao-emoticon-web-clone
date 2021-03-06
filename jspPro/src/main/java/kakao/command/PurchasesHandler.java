package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.CouponsDTO;
import kakao.domain.LikesDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.domain.PurchasesDTO;
import kakao.service.CouponsService;
import kakao.service.HeaderService;
import kakao.service.LikesService;
import kakao.service.PurchasesService;

public class PurchasesHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		/* String id=request.getParameter("id"); */

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("email");

		PurchasesService purchasesService = PurchasesService.getInstance();
		List<PurchasesDTO> purchasestList = purchasesService.selectPurchasesList(id);
		request.setAttribute("purchasestList", purchasestList);

		CouponsService couponsService = CouponsService.getInstance();
		List<CouponsDTO> couponsList = couponsService.selectCouponsList(id);
		request.setAttribute("couponsList", couponsList);

		LikesService likesService = LikesService.getInstance();
		List<LikesDTO> likesList = likesService.selectLikesList(id);
		request.setAttribute("likesList", likesList);
		
		HeaderService listService = HeaderService.getInstance();
		List<Profile_MemberDTO> memberList = listService.selectMemberList();
		request.setAttribute("memberList", memberList);
		System.out.println(" 오냐 ? ");

		session.setAttribute("referer", request.getRequestURI());

		// 포워딩
		return "/pages/mypage/purchases.jsp";

	}

}
