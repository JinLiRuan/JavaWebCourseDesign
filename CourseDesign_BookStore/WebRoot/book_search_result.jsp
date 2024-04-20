<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<jsp:useBean id="db" class="bookstore.db.DBHelper" scope="session"/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>搜索结果</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
  <style type="text/css">
    body,html{
      height: 100%;
      width: 100%;
    }
    
   	li{list-style: none;float: left;padding-left: 80px;}
	a{text-decoration: none;line-height: 40px;font-weight: bold; }
	#h1{font-size: 50px; color: cadetblue;font-style: italic;}
	#h2{color: cadetblue;font-style: italic;margin-top: 80px;margin-bottom: 50px;}
	h3{font-size:30px;color: cadetblue}
	.diyi{width: 100%;height: 130px;}
	.shucheng{position: relative;top: -100px;}
	.denglu{width: 400px;position: relative;left: 1100px;top: -80px;}
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
    
    #container{
      position: relative;
      min-height: 100%;
      width: 100%;
    }
  .diliu{
				margin-top: 50px;
			}	
  /*  #AA div{
    position: relative;
    transform: translateX(20%);
   } */
  </style>
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
				<form action="#" method="get">		
				<input type="text" name="search"  placeholder="请输入要查找的书名" class="search"/>
					<input type="submit" name="submit" value="Search" class="submit"/>		
				</form>
				</div>	
				<div class="daohang">
					
		<ul id="dh">
			<li><a href="index.jsp">商城首页</a></li>
			<li><a href="#">热卖推荐</a></li>
			<li><a href="#">镇店之宝</a></li>
			<li><a href="#">国外书籍</a></li>
			<li><a href="#">电子书</a></li>
			<li><a href="#">童书馆</a></li>	
		</ul>
		</div>	
			</div>		
   
    <div class="container" id="container">
      <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
          <div class="col-md">
          <img src="img/4.jpg" width="1500px" height="240px" align="middle">
          </div>
          <h3>搜索结果如下：</h3><hr>
          
          
          
          <table border="1">
          <tr align="center">	
          <%
          	String bkname = request.getParameter("search");
          	//bkname = new String(bkname.getBytes("ISO-8859-1"),"utf-8");

          	String sql = "select * from product where name like '"+bkname+"%'";
          	/* /* String sq[] = {bkname}; */
	        Connection connection = db.getConnection();
	        PreparedStatement pStatement = connection.prepareStatement(sql);
          	ResultSet rs = pStatement.executeQuery();
          	while(rs.next()){
          		String bookname = rs.getString(2);
				String price = rs.getString(3);
				String img = rs.getString(6);
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
		</tr>
		<%} %>
		</table>
      </div>
      
    </div>

<div class="diliu" align="center">
			<hr color="blue" />
		<p>	京公网安备 11010202007572号 丨 京ICP证 京B2-20171652号 丨  京ICP备16042375号-2<p>
<p>出版物经营许可证 新出发 京零字第西160071号 丨 广播电视节目制作经营许可证 （京）字第07439号</p>
<p>营业执照 丨 网络出版服务许可证 （京）字第320号</p>
<p>Copyright © 2015 - 2020 新华互联电子商务有限责任公司 版权所有</p>
<p>客服热线：4006666505</p>
</div>
    <script src="jquery-3.2.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
  </body>
</html>