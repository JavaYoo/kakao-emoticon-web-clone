package mypage.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypage.domain.CouponsDTO;
import mypage.domain.PurchasesDTO;
import mypage.service.CouponsService;
import mypage.service.PurchasesService;

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
