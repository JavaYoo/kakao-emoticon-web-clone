package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter{

	private String encoding;


	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// web.xml  filter 등록  encoding : UTF-8
		this.encoding =  filterConfig.getInitParameter("encoding");
		if(  this.encoding == null  ) {
			encoding = "UTF-8"; 
		}
		
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//System.out.println(" > CharacterEncodingFilter.doFilter() 호출됨...");
		request.setCharacterEncoding(  this.encoding  );
		chain.doFilter(request, response);
		
	}
	
	@Override
	public void destroy() {
		
	}

}
