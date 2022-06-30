/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-06-15 06:17:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.days02;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ex04_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");

	
	String operator = "+";
	String demoOutput = "";	

	try{
		int num1 = Integer.parseInt( request.getParameter("num1") );
		int num2 = Integer.parseInt( request.getParameter("num2") );
		operator = request.getParameter("operator");
		
		double result = 0;
		
		switch(operator){
		case "+": result = num1 + num2 ; break;
		case "-": result = num1 - num2 ; break;
		case "*": result = num1 * num2 ; break;
		case "/": result = num1 / num2 ; break;
		}
		
		demoOutput = String.format("%d %s %d = %.2f", num1 , operator, num2 , result);
	}catch(Exception e){
		//e.printStackTrace();
	}
	
	// num1, operator, num2 상태 관리
	
	

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<title>2022. 6. 15. - 오후 2:32:59</title>\r\n");
      out.write("<link rel=\"shortcut icon \"type = \"image/x-icon\" href = \"../images/SiSt.ico\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<h3>ex04.jsp</h3>\r\n");
      out.write("\r\n");
      out.write("<form method=\"get\" action=\"\">\r\n");
      out.write("\r\n");
      out.write("<input type=\"text\" id=\"num1\" name=\"num1\" autofocus=\"autofocus\" \r\n");
      out.write("value=\"");
      out.print( request.getParameter("num1") == null ? "" : request.getParameter("num1"));
      out.write("\">\r\n");
      out.write("<!-- select 태그도 선택한 옵션으로 상태 유지 -->\r\n");
      out.write("\r\n");
      out.write("<select id=\"operator\" name=\"operator\">\r\n");
      out.write("	<option>+</option>\r\n");
      out.write("	<option>-</option>\r\n");
      out.write("	<option>*</option>\r\n");
      out.write("	<option>/</option>\r\n");
      out.write("</select>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("	$(\"#operator\").val(\"");
      out.print( operator );
      out.write("\");\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<input type=\"text\" id=\"num2\" name=\"num2\" value=\" ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${param.num2}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write(" \">\r\n");
      out.write("\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<p id=\"demo\">");
      out.print(demoOutput );
      out.write("</p>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("	$(\":text\").css(\"text-align\",\"center\");\r\n");
      out.write("	\r\n");
      out.write("	// 첫 번째 input type = \"text\"\r\n");
      out.write("	/* \r\n");
      out.write("	$(\":text\").first()\r\n");
      out.write("	$(\":text:first-of-type\")\r\n");
      out.write("	$(\":text:eq(0)\")\r\n");
      out.write("	$(\":text\").eq(0)\r\n");
      out.write("	*/\r\n");
      out.write("	/* \r\n");
      out.write("	$(\"text:nth-of-type(2)\")\r\n");
      out.write("	$(\":text\").last()\r\n");
      out.write("	$(\":text:nth-last-of-type(1)\")\r\n");
      out.write("	$(\"form\").find(\":text\").eq(1)\r\n");
      out.write("	*/\r\n");
      out.write("	$(\":text\").eq(1).on(\"keyup\", function(){\r\n");
      out.write("		if(event.which == 13){\r\n");
      out.write("			//alert(\"1\")\r\n");
      out.write("			$(\"form\").submit();\r\n");
      out.write("		}\r\n");
      out.write("	})\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}