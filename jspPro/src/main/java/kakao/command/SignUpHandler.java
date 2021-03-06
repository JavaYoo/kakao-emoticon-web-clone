package kakao.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kakao.domain.MemberDTO;
import kakao.service.SignUpService;

public class SignUpHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
			String id = request.getParameter("email");
			String pwd = request.getParameter("password");
			String nn = request.getParameter("name");
			
			MemberDTO dto = new MemberDTO();
			dto.setM_id(id);
			dto.setM_pwd(pwd);
			dto.setM_nn(nn);
			
			SignUpService signUpService = SignUpService.getInstance();
			int rowCount = signUpService.addMember(dto);
		
			if (rowCount == 1) {
				String location = "/jspPro/pages/login/login_kakao.do";
				response.sendRedirect(location);  
			}
			
			return null;
		
	}

}
