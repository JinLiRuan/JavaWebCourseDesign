<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="bookstore.db.DBHelper"%>
<%@page import="bookstore.db.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <meta charset="utf-8" />
		<title>钉钉网上书城</title>
<style>
	
		li{list-style: none;float: left;padding-left: 80px;}
		a{text-decoration: none;line-height: 40px;font-weight: bold; }
		#h1{font-size: 50px; color: cadetblue;font-style: italic;}
		#h2{color: cadetblue;font-style: italic;margin-top: 80px;margin-bottom: 50px;}
		.diyi{width: 100%;height: 130px;}
		.shucheng{position: relative;top: -100px;}
		.denglu{width: 300px;position: relative;left: 1200px;top: -80px;}
		#big{background-color: #5F9EA0;}
	.sousuo{position: relative;left: 1100px;}
	.daohang{position: relative;top: -65px;}
		.search{width: 250px;
				height: 50px;
				border-radius: 18px;
				outline: none;
				border: 1px solid #ccc;
				}
		.submit{
			width:80px;
					height: 40px;
					border-radius: 15px;
					outline: none;
					border: 1px solid #ccc;
					font-size: 16px;	
			}
			table{		
				border-collapse: collapse;
			}
			.disi{		
				margin-top: 50px;
			}
			.diwu{
				margin-top: 30px;
			}
			p{
				color: gray;
			}
			.diliu{
				margin-top: 50px;
			}	
</style>
	</head>
	<body>
	

		<div class="diyi">
			<div class="tupian">	
				<img alt="timg.gif" src="img/logo.jpg" height="80px">
			</div>
			<div class="shucheng">
		
		<h1 align="center" id="h1">钉 钉 网 上 书 城</h1>
			<div class="denglu">
				<a href="my_cart.jsp">购物车</a>&nbsp;&nbsp;
				<a href="my_order.jsp">订单中心</a>&nbsp;&nbsp;
				<a href="login.jsp">登录</a>&nbsp;&nbsp;
				<a href="register.jsp">注册</a>&nbsp;&nbsp;	
		</div>
		</div>
		</div>
		
	<div id="big">
		<div class="sousuo">
				<form action="book_search_result.jsp" method="get">		
				<input type="text" name="search"  placeholder="请输入要查找的书名" class="search"/>
					<input type="submit" name="submit" value="Search" class="submit"/>		
				</form>
				</div>	
				<div class="daohang">
					
		<ul id="dh">
			<li><a href="#">商城首页</a></li>
			<li><a href="#">热卖推荐</a></li>
			<li><a href="#">镇店之宝</a></li>
			<li><a href="#">国外书籍</a></li>
			<li><a href="#">电子书</a></li>
			<li><a href="#">童书馆</a></li>	
		</ul>
		</div>	
			</div>		
	<div class="dier">
		<marquee direction="left" scrollamount="20"  behavior="alternate" width="100%" height="300px" loop="-1"><img src="img/lunbo1.jpg" id="c1"><img src="img/lunbo2.jpg" id="c3"><img src="img/lunbo3.jpg" id="c2"></marquee>
	</div>
	<div class="disan">
<h1 align="center" id="h2"> 馆&nbsp;&nbsp;长&nbsp;&nbsp;推&nbsp;&nbsp;荐</h1>
<table width="100%" border="1">
<%
	Connection connection;
	connection = DBHelper.getConnection();
	Statement statement = connection.createStatement();
	String sql = "select * from product limit 0,4";
	ResultSet resultSet = statement.executeQuery(sql);%>
	
	<tr align="center">		
	<% 
	while(resultSet.next()){
	String bookname = resultSet.getString(2);
	String price = resultSet.getString(3);
	String img = resultSet.getString(6);
	
	%>
	<td>
		<div class="tushu">
				<img alt="book" src="img/<%=img %>" width="250px" height="250px"><br/>
				<span>书名:<%=bookname%></span><br/>
				<span>售价:<%=price %></span><br />
				<form action="shop_cart.jsp" method="get">
				<a href="shop_cart.jsp" role="button"><input type="submit" name="che" value="加入购物车">
				<input type="hidden" name="bookname" value="<%=bookname %>">
				<input type="hidden" name="price" value="<%=price %>"></a>
				</form>
		</div>
		</td>	
<% }%>		
		</tr>
	<table>
</div>


<div class="disi">
	
<h1 align="center" id="h2"> 销&nbsp;&nbsp;量&nbsp;&nbsp;领&nbsp;&nbsp;先</h1>
<table width="100%" border="1">
<%

	 statement = connection.createStatement();
	 sql = "select * from product limit 4,4";
	 resultSet = statement.executeQuery(sql);%>
	
	<tr align="center">		
	<% 
	while(resultSet.next()){
	String bookname = resultSet.getString(2);
	String price = resultSet.getString(3);
	String img = resultSet.getString(6);
	%>
	<td>
		<div class="tushu">
				<img alt="book" src="img/<%=img %>" width="250px" height="250px"><br/>
				<span>书名:<%=bookname%><input type="hidden" name="bookname" value="<%=bookname %>"></span><br/>
				<span>售价:<%=price %><input type="hidden" name="price" value="<%=price %>"></span><br />
				<form action="shop_cart.jsp" method="get">
				<a href="shop_cart.jsp" role="button"><input type="submit" name="che" value="加入购物车">
				<input type="hidden" name="bookname" value="<%=bookname %>">
				<input type="hidden" name="price" value="<%=price %>"></a>
				</form>
		</div>
		</td>	
<% }%>		
		</tr>
	<table>
</div>


<div class="diwu">

<table width="100%" border="1">
<%

	 statement = connection.createStatement();
	 sql = "select * from product limit 8,4";
	 resultSet = statement.executeQuery(sql);%>
	
	<tr align="center">		
	<% 
	while(resultSet.next()){
	String bookname = resultSet.getString(2);
	String price = resultSet.getString(3);
	String img = resultSet.getString(6);
	
	%>
	<td>
		<div class="tushu">
				<img alt="book" src="img/<%=img %>" width="250px" height="250px"><br/>
				<span>书名:<%=bookname%><input type="hidden" name="bookname" value="<%=bookname %>"></span><br/>
				<span>售价:<%=price %><input type="hidden" name="price" value="<%=price %>"></span><br />
				<form action="shop_cart.jsp" method="get">
				<a href="shop_cart.jsp" role="button"><input type="submit" name="che" value="加入购物车">
				<input type="hidden" name="bookname" value="<%=bookname %>">
				<input type="hidden" name="price" value="<%=price %>"></a>
				</form>
		</div>
		</td>	
<% }%>		
		</tr>
	<table>
</div>

		
		<div class="diliu" align="center">
			<hr color="blue" />
		<p>	京公网安备 11010202007572号 丨 京ICP证 京B2-20171652号 丨  京ICP备16042375号-2<p>
<p>出版物经营许可证 新出发 京零字第西160071号 丨 广播电视节目制作经营许可证 （京）字第07439号</p>
<p>营业执照 丨 网络出版服务许可证 （京）字第320号</p>
<p>Copyright © 2015 - 2020 新华互联电子商务有限责任公司 版权所有</p>
<p>客服热线：4006666505</p>
</div>
  </body>
</html>
