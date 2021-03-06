package com.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// @WebFilter("/days09/board/*")
public class LoginCheckFilter implements Filter {

    public LoginCheckFilter() {

    }

    public void destroy() {

    }

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println(" > LoginCheckFilter.doFilter() 호출됨...");
		// session - member : logonID
		// 서블릿( 필터 )에서 세션을 사용하는 방법
		// 다운 캐스팅
		HttpServletRequest httpRequest =  (HttpServletRequest)request;
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		
		String logonID = null;
		boolean isLogon = false;
		
		HttpSession session = httpRequest.getSession(false);
		
		if ( session != null ) {
			logonID = (String)session.getAttribute("member");
			if( logonID != null ) {
				isLogon = true;
			}
		}
		
		// board/* 요청
		// isLogon  true( 로그인 O )  false ( 로그인 X )
		if( isLogon ) {  // ( 로그인 O )
			chain.doFilter(request, response);
		}else {  // false ( 로그인 X )
			// 원래 요청 URI 확인 / 저장  - pageX,  requestX,  session,  application,  DB저장,  쿠키
			
			String referer = httpRequest.getRequestURI();  //    /jspPro/days09/board/ex03_write.jsp
			session.setAttribute("referer" , referer);
			
			// 로그인 페이지 이동
			String location = "/jspPro/days09/member/ex03_logon.jsp";
			httpResponse.sendRedirect(location);
		}
		
		
		
	}

	public void init(FilterConfig fConfig) throws ServletException {

	}

}