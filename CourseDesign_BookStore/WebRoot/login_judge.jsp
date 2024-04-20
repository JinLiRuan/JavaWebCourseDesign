<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bookstore.db.*" %>
<%@ page import="java.sql.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'login_judge.jsp' starting page</title>
 
  </head>
  
  <body>
  <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
   
		try {
		    Connection connection = DBHelper.getConnection();
			Statement statement = connection.createStatement();
			String sql = "select * from user where username ='" + username + "'and password ='"+password+"'";
		    ResultSet resultSet = statement.executeQuery(sql);
			if (resultSet.next()) {
			if(resultSet.getString("username").equals("admin")&& resultSet.getString("password").equals("admin")){
			application.setAttribute("username", username);
			session.setAttribute("username", username);
	%>
			<script type="text/javascript">alert('欢迎您，管理员！');window.location.href='manager.jsp';</script>		
	<% 
		}else{
			application.setAttribute("username", username);
			session.setAttribute("username", username);
	%>
			 <script>
			     	alert("恭喜登录成功！，欢迎<%=username%>!");
			     	window.location.href='login_success.jsp';
			 </script>
				<%
		}	
			}else if(session.getAttribute("username") != null){	
			
			if(session.getAttribute("username").equals("admin")){%>
			<script>
			     	alert("您已经登陆，请勿重复登陆！！！");
			     	window.location.href='manager.jsp'; 
			 </script>
			<% 
			}else{%>	
			
			 <script>
			     	alert("您已经登陆，请勿重复登陆！！！");
			     	window.location.href='login_success.jsp'; 
			 </script>
			<% 
	}}
			else{
		%>
			 <script type="text/javascript">
			     	alert('抱歉，用户名或密码错误！');
			     	window.location.href='login.jsp';
			 </script>
			 <%
		}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
   %>

  </body>
</html>
