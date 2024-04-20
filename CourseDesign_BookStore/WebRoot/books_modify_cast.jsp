<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="db" class="bookstore.db.DBHelper" scope="session"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改书籍信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style type="text/css">
    #myTabContent{
      padding-top: 50px;
      padding-left: 50px;
    }
    .form-group{
      margin: 30px;
    }
  </style>
  <body>
  		<% 
  			String books_id = request.getParameter("id");
  			String sql = "select id,name,price,imgurl,pnum from product where id=?";
           	Connection connection = db.getConnection();
           	PreparedStatement pStatement = connection.prepareStatement(sql);
            pStatement.setString(1, books_id);
           	ResultSet rs = 	pStatement.executeQuery();
  			while(rs.next()){
  		%>
   	 		<form method="POST" action="books_modify.jsp">
                <div class="form-group">
                    <label for="id" class="control-label col-md-2">书籍编号：</label>
                    <input type="text" class="col-md-6" name="books_id" id="disabledInput" value="<%=rs.getString("id") %>" class="form-control" placeholder="" readonly>
                    <span class="glyphicon"></span>                    
                  </div>
                  <div class="form-group">
                    <label for="name" class="control-label col-md-2">书籍名称：</label>
                    <input type="text" class="col-md-6" name="books_name" id="books_name" value="<%=rs.getString("name") %>" class="form-control"  placeholder="" required="required">
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="type" class="control-label col-md-2">书籍类型：</label>
                    <!-- <input type="text" class="col-md-6" name="books_type" id="books_type" class="form-control" placeholder="" required="required"> -->
                    <select name="category">
                    	<option value="文学类">文学类</option>
                    	<option value="生活类">生活类</option>
                    	<option value="科学类">科学类</option>
                    </select>
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="price" class="control-label col-md-2">书籍价格：</label>
                    <input type="text" class="col-md-6" name="price" id="price" value="<%=rs.getString("price") %>" class="form-control" placeholder="" required="required">
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="face" class="control-label col-md-2">书籍封面：</label>
                    <input type="text" class="col-md-3" name="imagepathmod" id="imagepathmod" value="C:\fakepath\<%=rs.getString("imgurl") %>"  class="form-control" placeholder="" required="required">
                    <input type="file" name="imgpath" accept="image/*"  onchange="document.getElementById('imagepathmod').value=this.value" />
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="face" class="control-label col-md-2">库存量：</label>
                    <input type="text" class="col-md-6" name="stock" id="face" value="<%=rs.getString("pnum") %>"  class="form-control" placeholder="" required="required">
                    <span class="glyphicon"></span>
                  </div>
            <% } db.close(); %>
                  <input type="submit" name="submit" class="col-md-offset-4 col-md-2 btn btn-info" value="提交修改">
                </form>
  </body>
</html>
