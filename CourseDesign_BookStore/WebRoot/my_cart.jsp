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
 td{ text-align:center;word-wrap:break-word;onclick:"del_tr(this)"}
 th{background-color:cadetblue;color:white;word-wrap:break-word;}
 caption{
 padding-bottom:30px;font-size:30px;color:green;
 }
 
  </style>
  <body>
  <%
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String current = df.format(System.currentTimeMillis());  
  application.setAttribute("current", current);
   %>
<div class="table">
    <table  border="1">
    <caption>您的购物车情况如下：</caption>
  <tr>
  <th>加入时间</th>
  <th>商品名称</th>
  <th>商品数量</th>
  <th>商品单价</th>
  <th>立即购买</th>
  <th>移除商品</th>
 </tr>


     <tr>
   <%String book = (String)application.getAttribute("bookname"); 
     String price = (String)application.getAttribute("price"); 
	if(book == null){
	%>
	<script>
	  alert("当前购物车为空，请先加商品进购物车。");
	   window.location.href='login_success.jsp'; 
  </script>  
	
	
	<% }
	else
	
	%>
   <td><%=current%></td>
   <td><%=book%></td>
   <td><input type="text" size=1 name="num" value=1></td>
   <td><%=price %></td>
   <td><a href="submit_order.jsp" role="button"><input type="button" name="order" value="提交订单"></a></td>
     <td><a href="cart_delete.jsp" role="button"><input type="button" name="delete" value="删除商品"></a></td>
   </tr>

     </table>
     </div>
  </body>
</html>
