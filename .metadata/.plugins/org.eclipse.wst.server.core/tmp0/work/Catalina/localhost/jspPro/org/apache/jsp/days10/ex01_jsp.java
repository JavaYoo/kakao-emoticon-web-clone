/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-06-27 00:34:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.days10;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ex01_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/Class/JSPClass/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/jspPro/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1655356643006L));
  }

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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<title>2022. 6. 27. - 오전 9:08:45</title>\r\n");
      out.write("<link rel=\"shortcut icon \"type = \"image/x-icon\" href = \"../images/SiSt.ico\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<h3>days10/ex01.jsp</h3>\r\n");
      out.write("\r\n");
      out.write("<pre>\r\n");
      out.write("	[ 계층형( 답변형 ) 게시판 ] - MVC 패턴\r\n");
      out.write("	\r\n");
      out.write("	1. web.xml -> 복사 붙이기 web_days09_p.xml\r\n");
      out.write("	2. days10 폴더\r\n");
      out.write("		ㄴ replyboard 폴더 생성\r\n");
      out.write("			ㄴ emoticon 폴더\r\n");
      out.write("			ㄴ images 폴더\r\n");
      out.write("			\r\n");
      out.write("	3. MV[C] 컨트롤러 역할 -> A.    DispatcherServlet.java ( 단 하나의 서블릿 )\r\n");
      out.write("	                                  B.        init(){   }   ???.properties\r\n");
      out.write("	                                          list.do = ListHandler\r\n");
      out.write("		모든 요청 -> 요청 URL -> map ( 커맨드핸들러 ) \r\n");
      out.write("		                  key              value ( [M]VC )\r\n");
      out.write("	                                         로직처리 객체\r\n");
      out.write("	                                         .process() ->  Service -> Dao -> DB처리\r\n");
      out.write("	                                         request.setAttribute() 저장\r\n");
      out.write("	                                         Session\r\n");
      out.write("	                                         4가지 영역\r\n");
      out.write("	                                         return 뷰페이지\r\n");
      out.write("	                                         \r\n");
      out.write("	                                  포워딩 또는 리다이렉트\r\n");
      out.write("	                              C.  CommandHandler.java 인터페이스\r\n");
      out.write("	                              D.  ListHandler.java \r\n");
      out.write("	                              E.  ListService.java\r\n");
      out.write("	                              F.  DAO/DAOimpl\r\n");
      out.write("	                              G. 테이블 생성 + 시퀀스 생성\r\n");
      out.write("	                              H. DTO \r\n");
      out.write("	                              I.  list.jsp\r\n");
      out.write("\r\n");
      out.write("               **** 로직 이해 + 오늘 수업 코딩 X ****\r\n");
      out.write("	4.  답변형(계층형) 게시판 로직 이해 - 주말에 15분이면 읽을 수 있을 거예요.\r\n");
      out.write("        http://taeyo.net/Columns/View.aspx?SEQ=100&PSEQ=9&IDX=1  \r\n");
      out.write("        \r\n");
      out.write("        1) 오라클 DB + 게시판테이블 생성\r\n");
      out.write("        글번호 ( seq : PK )  제목 ( subject )                        .... \r\n");
      out.write("        1             첫번째 게시글\r\n");
      out.write("        2             두번째 게시글\r\n");
      out.write("        3             세번째 게시글\r\n");
      out.write("        4             2-1 답글\r\n");
      out.write("        5             2-2 답글\r\n");
      out.write("        6             2-2-1 답답글\r\n");
      out.write("        7             3-1 답글\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        1-2 ) list.jsp 글 목록 페이지\r\n");
      out.write("         - 최신글 먼저 출력              ORDER BY seq DESC\r\n");
      out.write("        글번호 ( seq : PK )  제목 ( subject )                        .... \r\n");
      out.write("        3             세번째 게시글\r\n");
      out.write("        7               ㄴ 3-1 답글\r\n");
      out.write("        2             두번째 게시글\r\n");
      out.write("        5               ㄴ 2-2 답글\r\n");
      out.write("        6               ㄴ 2-1-1 답글\r\n");
      out.write("        4               ㄴ 2-1 답글\r\n");
      out.write("        1             첫번째 게시글\r\n");
      out.write("        \r\n");
      out.write("        답글 위한 선행 조건 ) \r\n");
      out.write("        	ㄱ. 보고자 하는 게시글 (2) 클릭 view.do -> view.jsp\r\n");
      out.write("        	    [수정][삭제][**답글달기**][홈]\r\n");
      out.write("        	\r\n");
      out.write("		답글 list.jsp  관련된 게시글           그룹 화면 출력 하는 방법 )\r\n");
      out.write("		                   ㄴ 답글\r\n");
      out.write("		                     ㄴ 답답글\r\n");
      out.write("		                   ㄴ 답글\r\n");
      out.write("		      => 해결방법 : 그룹화 컬럼 추가 ( REF )\r\n");
      out.write("        	\r\n");
      out.write("</pre>\r\n");
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