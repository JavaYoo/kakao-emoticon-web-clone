package kakao.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.CouponsDTO;
import kakao.domain.PurchasesDTO;
import kakao.service.CouponsService;
import kakao.service.PurchasesService;

public class PurchasesHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id=request.getParameter("id");
		
		PurchasesService purchasesService  = PurchasesService.getInstance();
	      List<PurchasesDTO> purchasestList = purchasesService.selectPurchasesList(id);
	      request.setAttribute("purchasestList", purchasestList);
	      
	      CouponsService couponsService  = CouponsService.getInstance();
	      List<CouponsDTO> couponsList = couponsService.selectCouponsList(id);
	      request.setAttribute("couponsList", couponsList);
	      
	     
	      // 포워딩
	      return "/mypage/purchases.jsp";
		

	}

}
