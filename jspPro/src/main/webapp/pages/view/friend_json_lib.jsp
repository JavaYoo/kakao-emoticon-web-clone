<%@page import="net.sf.json.JSONArray"%>
<%@page import="net.sf.json.JSONObject"%>

<%@ page trimDirectiveWhitespaces="true"
   contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="com.util.JdbcUtil"%>
<%@page import="com.util.ConnectionProvider"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
Connection con = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

String sql = "SELECT fr_add, m_nn, m_pimg" 
				+" FROM (select fr_add from em_friend where fr_id = 'qkreks12@daum.net') f"
				+" JOIN em_member m" 
				+" ON f.fr_add = m.m_id";

//{ }
   JSONObject jsonData = new JSONObject();
   
try{      
   con = ConnectionProvider.getConnection();
   pstmt = con.prepareStatement(sql);
   rs = pstmt.executeQuery();  
   
   // []        
   JSONArray jsonFriendArray = new JSONArray();   

   while( rs.next() ){ 
      String fr_add = rs.getString("fr_add");
      String m_nn = rs.getString("m_nn");
      String m_pimg = rs.getString("m_pimg");
      
      JSONObject jsonFriend = new JSONObject();
      jsonFriend.put("fr_add", fr_add);
      jsonFriend.put("m_nn", m_nn);
      jsonFriend.put("m_pimg", m_pimg);
      
      jsonFriendArray.add(  jsonFriend );
      
   } // while 
      
     
   jsonData.put("friendListJSON", jsonFriendArray);
   
}catch(Exception e){
   e.printStackTrace();
}finally{
   JdbcUtil.close(rs);
   JdbcUtil.close(pstmt);
   JdbcUtil.close(con);
} // try

 

%>
<%=  jsonData %>
 