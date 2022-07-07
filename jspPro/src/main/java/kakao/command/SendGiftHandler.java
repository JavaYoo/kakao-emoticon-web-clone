package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.GiftBoxDTO;
import kakao.service.GiftService;

public class SendGiftHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String gb_sendid = request.getParameter("gb_sendid");
		String gb_payway = request.getParameter("gb_payway");
		int gb_emnum = Integer.parseInt(request.getParameter("gb_emnum"));
		String gb_state = request.getParameter("gb_state");		
		String gb_getid = request.getParameter("gb_getid");
		
		String price = request.getParameter("gb_payprice");	//????원
		int gb_payprice = Integer.parseInt(price.substring(0, price.length() -1));
		
		GiftBoxDTO dto = new GiftBoxDTO();
		dto.setGb_enum(gb_emnum);
		dto.setGb_state(gb_state);
		dto.setGb_getid(gb_getid);
		dto.setGb_sendid(gb_sendid);
		dto.setGb_payprice(gb_payprice);
		dto.setGb_payway(gb_payway);	
		
		GiftService giftService = GiftService.getInstance();
		int rowCount = giftService.gift(dto);
		if(rowCount==1) {
            String location = "/jspPro/kview/view.do?el_num="+gb_emnum;
            response.sendRedirect(location);  // 포워딩 X,  리다이렉트 O
			System.out.println("선물 완료");
		}
		if(rowCount !=1) {
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}
		return null;
	}

}