package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.BuyListDTO;
import kakao.service.BuyService;

public class BuyHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String bl_id = request.getParameter("bl_id");
		String bl_payway = request.getParameter("bl_payway");
		int bl_num = Integer.parseInt(request.getParameter("bl_num"));
		String bl_state = request.getParameter("bl_state");		
		
		String price = request.getParameter("bl_price");	//????원
		int bl_price = Integer.parseInt(price.substring(0, price.length() -1));
		
		BuyListDTO dto = new BuyListDTO();
		dto.setBl_id(bl_id);
		dto.setBl_payway(bl_payway);
		dto.setBl_num(bl_num);
		dto.setBl_state(bl_state);
		dto.setBl_price(bl_price);
		
		BuyService buyService = BuyService.getInstance();
		int rowCount = buyService.buy(dto);
		if(rowCount==1) {
            String location = "/jspPro/pages/view/view.do?el_num="+bl_num;
            response.sendRedirect(location);  // 포워딩 X,  리다이렉트 O
			System.out.println("구매 완료");
		}
		if(rowCount !=1) {
			response.sendError( HttpServletResponse.SC_METHOD_NOT_ALLOWED );
		}
		return null;
	}

}