package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kakao.domain.CouponsDTO;
import kakao.domain.LikesDTO;
import kakao.domain.Profile_MemberDTO;
import kakao.domain.ReceivedDTO;
import kakao.service.CouponsService;
import kakao.service.HeaderService;
import kakao.service.LikesService;
import kakao.service.ReceivedService;

public class ReceivedHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		/* String id=request.getParameter("id"); */

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("email");

		ReceivedService receivedService = ReceivedService.getInstance();
		List<ReceivedDTO> receivedList = receivedService.selectPresentReceivedList(id);
		request.setAttribute("receivedList", receivedList);

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
		return "/pages/mypage/received.jsp";

	}

}
