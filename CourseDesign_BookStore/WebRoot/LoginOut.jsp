<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'LoginOut.jsp' starting page</title>

  </head>
  
  <body>
  <% 
HttpSession session2 =request.getSession(false);
		if(session2==null){
        
  %>
       <script type='text/javascript'>alert('注销成功！');
       window.location.href='index.jsp';
       </script>
   <!--      response.sendRedirect("index.jsp"); -->
     <%}else {
			session.removeAttribute("username");
			session.removeAttribute("cart");
			%> 
       
		<script type='text/javascript'>alert('注销成功！');
		window.location.href='index.jsp';
		</script>
		<%     /*  response.sendRedirect("index.jsp"); */
	
		} %>
	 
	
  </body>
</html>
