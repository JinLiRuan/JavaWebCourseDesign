<%@page import="bookstore.bean.UserBean"%>
<%@page import="bookstore.dao.UserDao"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'register_success.jsp' starting page</title>
  </head>
  
  <body>
  <%
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  String gender = request.getParameter("gender");
  String phone = request.getParameter("phone");
  String address = request.getParameter("address");
  System.out.println(password);
  UserBean userBean = new UserBean(username,password,gender,phone,address);
  UserDao userDao = new UserDao();
  userDao.insertUser(userBean);  
  
   %>

  
  <script>
     	alert('恭喜你，注册成功！');
     	window.location.href='login.jsp';
 </script>
    
     
     
  </body>
  
  
</html>
