package days03;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Member extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> /member/get -> doGet() 호출됨");
		
		//ex07_ok.jsp 리다이렉트
		// http://localhost/days03/ex07_ok.jsp  404
		// http://localhost/jspPro/days03/ex07_ok.jsp
		// String location = "/days03/ex07_ok.jsp
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String location = 
				String.format("/jspPro/days03/ex07_ok.jsp?name=%s&age=%s", URLEncoder.encode(name, "UTF-8"), age);
		response.sendRedirect(location);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		System.out.println("> /member/get -> doPost() 호출됨" + name);
		
		String path = "/days03/ex07_ok.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}
	
}
