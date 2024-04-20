<%@page import="bookstore.bean.UserBean"%>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.Param" %>
<%@ page import="java.util.Vector" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>"> 
    <title>专属于您的购物车</title>
  </head>

  <body>
  
  <c:choose>
  
  <c:when test="${empty sessionScope.username}">
  
  <script>
	   alert("请先登录账号！!");
	   window.location.href='login.jsp';
  </script>
  </c:when>
  <c:otherwise>


    <!-- <script> -->
    <script type="text/javascript">alert('已添加至购物车!');location='javascript:history.go(-1)';</script>
	 
	 <%
	 String bookname=request.getParameter("bookname");
	  String price=request.getParameter("price");
	 application.setAttribute("bookname", bookname); 
	  application.setAttribute("price", price); 

	
	  %> 
	  
	  <!--  alert("成功加入购物车！！!");
	   window.location.href='index.jsp';  -->
  <!-- </script>  -->
<%-- <%request.getRequestDispatcher("index.jsp").forward(request, response); %> --%>
  </c:otherwise>

  </c:choose>

  </body>
  
  
</html>
