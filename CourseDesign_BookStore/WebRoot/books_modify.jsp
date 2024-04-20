<%@page import="java.sql.SQLException"%>
<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<jsp:useBean id="db1" class="bookstore.db.DBHelper" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>书籍修改处理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
    
    	String books_id = request.getParameter("books_id");
    	String books_name = request.getParameter("books_name");
    	String price = request.getParameter("price");
    	String category = request.getParameter("category");
    	String stock = request.getParameter("stock");
    	String imagepath = request.getParameter("imagepathmod");
    	String imagepath1 = imagepath.substring(12);
    	
/*     	books_id = new String(books_id.getBytes("ISO-8859-1"),"utf-8");
    	books_name = new String(books_name.getBytes("ISO-8859-1"),"utf-8");
    	price = new String(price.getBytes("ISO-8859-1"),"utf-8");
    	category = new String(category.getBytes("ISO-8859-1"),"utf-8");
    	stock = new String(stock.getBytes("ISO-8859-1"),"utf-8");
    	imagepath1 = new String(imagepath1.getBytes("ISO-8859-1"),"utf-8"); */
    	    	
    	String sql = "update product set name=?,price=?,category=?,pnum=?,imgurl=? where id=?";
    	String sq1[] = {books_name,price,category,stock,imagepath1,books_id};
    	
       	Connection connection = db1.getConnection();
       	PreparedStatement pStatement = connection.prepareStatement(sql);
        pStatement.setString(1, books_name);
        pStatement.setString(2, price);
        pStatement.setString(3, category);
        pStatement.setString(4, stock);
        pStatement.setString(5, imagepath);
        pStatement.setString(6, books_id);
       	int num = 	pStatement.executeUpdate();
    	db1.close();
    	if(num != 0){
    	
     %>
     <script type="text/javascript">
     	alert('修改成功！');
     	window.location.href='backstage.jsp';
     </script>
     
     <%} else%>
       <script type="text/javascript">
     	alert('修改失败！');
     	window.location.href='backstage.jsp';
     </script>
  </body>
</html>
