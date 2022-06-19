<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    /*url : http://localhost:7090/days03/ex05_forward.jsp?name=admin&age=20*/
    /*페이지표시 :  ex05_finish.jsp*/
    String path ="ex05_finish.jsp";
    RequestDispatcher dispatcher = request.getRequestDispatcher(path);
    dispatcher.forward(request, response);
%>