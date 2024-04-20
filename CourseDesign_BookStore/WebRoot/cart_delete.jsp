<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单中心</title>
   <meta http-equiv="refresh" content="1; url=login_success.jsp"> 
  </head>
    <style>
    body{
    background: url("img/beijing.jpg") no-repeat center;
    /*设置图片适应整个页面*/
    background-size: 100% 100%;
    background-attachment:fixed;
    }
  table{
      table-layout:fixed; 
		border-collapse: collapse;
		width:600px;
		align:center;
		 position: absolute;   
	    top: 50%;   
	    left:40%;   
	    margin: -250px 0 0 -150px; 
  }
 td{ text-align:center;word-wrap:break-word;}
 th{background-color:cadetblue;color:white;word-wrap:break-word;}
 caption{
 padding-bottom:30px;font-size:30px;color:green;
 }
 
  </style>
  <body>
<%application.removeAttribute("bookname");

application.removeAttribute("price");

 %>

<script type="text/javascript">

function del_tr(obj){
　　//obj就是当前对象 this
　　var index = $(obj).parents("tr").index(); //这个可获取当前tr的下标
　　$(obj).parents("tr").remove();
}

    alert('删除成功！当前购物车为空，一秒后自动跳转到首页！');
 	/* window.location.href='my_order.jsp'; */
</script>
  </body>
</html>
