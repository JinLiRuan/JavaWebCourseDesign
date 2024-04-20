<%@page import="bookstore.db.DBHelper"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="db" class="bookstore.db.DBHelper" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>网上书城后台管理系统</title>
    <link href="bootstrap.min.css" rel="stylesheet">
    <script src="jquery-3.1.1.js" type="text/javascript" charset="utf-8"></script>
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
    <div class="container">
      <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
              <li class=""><a href="#">首页 <span class="sr-only">(current)</span></a></li>
              <li><a href="login_success.jsp">书城</a></li>
              <li><a href="#">提醒</a></li>
              <li><a href="#"><%=session.getAttribute("username") %></a></li>
              <li><a href="${pageContext.request.contextPath}/LoginOut.jsp">退出</a></li>  
            </ul>
      </div><!-- /.navbar-collapse -->
          <div class="col-md-2">
            <p><b>设置</b></p>
            <ul id="myTab" class="nav nav-tabs nav-stacked">
                <li class="active"><a href="#add" data-toggle="tab">添加书籍信息</a></li>
                <li><a href="#update" data-toggle="tab">修改书籍信息</a></li>
                <li><a href="#delete" data-toggle="tab">删除书籍</a></li>
                <li><a href="#order" data-toggle="tab">查看订单</a></li>
               <li><a href="#data" data-toggle="tab">查看用户</a></li>
               <li><a href="#prove" data-toggle="tab">修改用户</a></li>
               <li><a href="#password" data-toggle="tab">公告提示</a></li>
               <li><a href="#user_group" data-toggle="tab">书城状况</a></li>
            </ul>
          </div>
          <div class="col-md-10">       
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade in active" id="add">
                <form method="POST" action="books_add.jsp">
                  <div class="form-group">
                    <label for="id" class="control-label col-md-2">书籍编号：</label>
                    <input type="text" class="col-md-6" name="books_id" id="books_id" class="form-control" placeholder="" required="required">
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="name" class="control-label col-md-2">书籍名称：</label>
                    <input type="text" class="col-md-6" name="books_name" id="books_name" class="form-control" placeholder="" required="required">
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="type" class="control-label col-md-2">书籍类型：</label>
                    <!-- <input type="text" class="col-md-6" name="category" id="books_type" class="form-control" placeholder="" required="required"> -->
                    <select name="category">
                    	<option value="文学类">文学类</option>
                    	<option value="生活类">生活类</option>
                    	<option value="科学类">科学类</option>
                    </select>
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="price" class="control-label col-md-2">书籍价格：</label>
                    <input type="text" class="col-md-6" name="price" id="price" class="form-control" placeholder="" required="required">
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="face" class="control-label col-md-2">书籍封面：</label>
                    <input type="text" class="col-md-3" name="imagepath" id="path" class="form-control" placeholder="" required="required">
                    <input type="file" name="imgpath" accept="image/*" onchange="document.getElementById('path').value=this.value" />
                    <span class="glyphicon"></span>
                  </div>
                  <div class="form-group">
                    <label for="face" class="control-label col-md-2">库存量：</label>
                    <input type="text" class="col-md-6" name="stock" id="face" class="form-control" placeholder="" required="required">
                    <span class="glyphicon"></span>
                  </div>
                  <input type="submit" name="submitadd" value="提交" class="col-md-offset-4 col-md-2 btn btn-success">
                </form>
              </div>
              <div class="tab-pane fade" id="update">
                <table border="1" class="table table-bordered table-hover">
              		<tr class="active">
              			<th>书籍编号</th>
              			<th>书名</th>
              			<th>书籍类别</th>
              			<th>库存</th>
              			<th>价格</th>
              			<th>操作</th>
              		</tr>
                <% 
                	String sql = "select id,name,price,category,pnum from product"; 
                	Connection connection = db.getConnection();
                	PreparedStatement pStatement = connection.prepareStatement(sql);
                	ResultSet rs = 	pStatement.executeQuery();
                    while(rs.next()){
                %>
                	<tr>
                		<td><%=rs.getString("id") %></td>
                		<td><%=rs.getString("name") %></td>
                		<td><%=rs.getString("category") %></td>
                		<td><%=rs.getString("pnum") %></td>
                		<td><%=rs.getString("price") %></td>
                		<td><a class="btn btn-info" href="books_modify_cast.jsp?id=<%=rs.getString("id") %>" role="button">修改</a></td>
                	</tr>
                	
                <%
                	//request.setAttribute("books_id", rs.getString("id"));
                    }
                   db.close();
                      %>
         		</table>
              </div>
              <div class="tab-pane fade" id="delete">
              	<table border="1" class="table table-bordered table-hover">
              		<tr class="active">
              			<th>书籍编号</th>
              			<th>书名</th>
              			<th>书籍类别</th>
              			<th>库存</th>
              			<th>价格</th>
              			<th>操作</th>
              		</tr>
                <% 
                   	sql = "select id,name,price,category,pnum from product"; 
                	connection = db.getConnection();
                    PreparedStatement pStatement2 = connection.prepareStatement(sql);
                	ResultSet rs1 = pStatement2.executeQuery();
                    while(rs1.next()){
                %>
                	<tr>
                		<td><%=rs1.getString("id") %></td>
                		<td><%=rs1.getString("name") %></td>
                		<td><%=rs1.getString("category") %></td>
                		<td><%=rs1.getString("pnum") %></td>
                		<td><%=rs1.getString("price") %></td>
                		<td><a class="btn btn-danger" href="books_delete.jsp?id=<%=rs1.getString("id") %>" role="button">删除</a></td>
                	</tr>
                	
                <% } db.close();  %>
         		</table>
              </div>
              <div class="tab-pane fade" id="order">
                <table border="1" class="table table-bordered table-hover">
                	<tr class="active">
              			<th>订单号</th>
              			<th>订单用户</th>
              			<th>收件人姓名</th>
              			<th>收件人地址</th>
              			<th>电话</th>
              			<th>购买时间</th>
              		</tr>
                <% 
                	String sql2 = "select id,receiverName,receiverAddress,receiverPhone,ordertime,user_id from orders"; 
                	Connection connection2 = db.getConnection();
                	PreparedStatement preStatement = connection2.prepareStatement(sql2);
                	ResultSet rs2 = preStatement.executeQuery();
                    while(rs2.next()){
                %>
                	<tr>
                		<td><%=rs2.getString("id") %></td>
                		<td><%=rs2.getString("user_id") %></td>
                		<td><%=rs2.getString("receiverName") %></td>
                		<td><%=rs2.getString("receiverAddress") %></td>
                		<td><%=rs2.getString("receiverPhone") %></td>
                		<td><%=rs2.getString("ordertime") %></td>
                	</tr>
                	
                <% } db.close();  %>
                </table>
              </div>
              <div class="tab-pane fade" id="data">
                <p>data</p>
              </div>
              <div class="tab-pane fade" id="prove">
                <p>prove</p>
              </div>
              <div class="tab-pane fade" id="password">
                <p>password</p>
              </div>
              <div class="tab-pane fade" id="user_group">
                <p>user_grou</p>
              </div>
          </div>
          </div>
        </div>
        <div class="col-md-1"></div>
      </div>
    </div>


    
   
    <script src="bootstrap.min.js"></script>
  </body>
</html>