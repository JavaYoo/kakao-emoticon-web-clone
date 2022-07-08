
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>

<%
    JSONObject jsonData = new JSONObject();
    JSONArray jsonLikesArray = new JSONArray();

     	String l_num=(String)request.getAttribute("count");
    	int num=Integer.parseInt(l_num);
       
         
         JSONObject jsonLikes = new JSONObject();
         jsonLikes.put("num", num);
         

         

          
      jsonData.put("count", jsonLikes); 
%>
<%=  jsonData %>