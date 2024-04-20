<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<jsp:useBean id="db" class="bookstore.db.DBHelper" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加书籍处理页面</title>
    
    <meta charset="utf-8">
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
    	String imagepath = request.getParameter("imagepath");
    	String imagepath1 = imagepath.substring(12);
    	
/*     	books_id = new String(books_id.getBytes("ISO-8859-1"),"utf-8");
    	books_name = new String(books_name.getBytes("ISO-8859-1"),"utf-8");
    	price = new String(price.getBytes("ISO-8859-1"),"utf-8");
    	category = new String(category.getBytes("ISO-8859-1"),"utf-8");
    	stock = new String(stock.getBytes("ISO-8859-1"),"utf-8");
    	imagepath1 = new String(imagepath1.getBytes("ISO-8859-1"),"utf-8"); */
    	
    	Connection connection = db.getConnection();
    	String sql = "insert into product(id,name,price,category,pnum,imgurl) values(?,?,?,?,?,?)";
    	/* String sq[] = {books_id,books_name,price,category,stock,imagepath1}; */
    	PreparedStatement pStatement = connection.prepareStatement(sql);
    	pStatement.setString(1, books_id);
    	pStatement.setString(2, books_name);
    	pStatement.setString(3, price);
    	pStatement.setString(4, category);
    	pStatement.setString(5, stock);
    	pStatement.setString(6, imagepath1);
    	int num = pStatement.executeUpdate();
          if(num != 0){
                System.out.print("书本成功添加！！！"); 
               }
               else{
                     System.out.print("书本添加失败！！！");
               }
    	db.close();
    	
     %>
     <script type="text/javascript">
     	alert('添加成功！');
     	window.location.href='backstage.jsp';
     </script>
  </body>
</html>
