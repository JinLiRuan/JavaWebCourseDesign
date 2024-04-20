<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date" import="java.text.SimpleDateFormat"%>
<jsp:useBean id="db" class="bookstore.db.DBHelper" scope="session"/>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>我的订单</title>
    <link href="bootstrap.min.css" rel="stylesheet">
  </head>
  <style type="text/css">
    body,html{
      height: 100%;
      width: 100%;
    }
    #container{
      position: relative;
      min-height: 100%;
      width: 100%;
    }
    div.panel-footer{
      position: relative;
      text-align: center;
      background-color: #9cf;
      bottom: 0;
    }
   #AA div{
    position: relative;
    transform: translateX(20%);
   }
  </style>
  <body>
    <div class="container" id="container">
      <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
          <div class="col-md">
          <img src="img/3.jpg" width="1200px" height="240px">
          </div>
          <h3>我的订单</h3><hr>
          <table border="1" class="table table-bordered table-hover">
                	<tr class="active">
              			<th>订单号</th>
              			<th>订单用户</th>
              			<th>收件人姓名</th>
              			<th>收件人地址</th>
              			<th>电话</th>
              			<th>购买时间</th>
              			<th>操作</th>
              		</tr>
                <% 
                //生成订单编号
             /*    Date date = new Date();
				SimpleDateFormat sdFormat = new SimpleDateFormat("HHmmssSSS");
				String id = sdFormat.format(date); */
				/* Integer order_id = Integer.parseInt(id); */
       
               	String sql = "select id,user_id,receiverName,receiverAddress,receiverPhone,ordertime from orders where id=?";
                Connection connection = db.getConnection();
               	PreparedStatement preparedStatement = connection.prepareStatement(sql);
               	String order_id =(String)application.getAttribute("id");
               	preparedStatement.setString(1, order_id);
               	ResultSet rs = 	preparedStatement.executeQuery();
                   while(rs.next()){
                %>
                	<tr>
                		<td><%=rs.getString("id") %></td>
                		<td><%=rs.getString("user_id") %></td>
                		<td><%=rs.getString("receiverName") %></td>
                		<td><%=rs.getString("receiverAddress") %></td>
                		<td><%=rs.getString("receiverPhone") %></td>
                		<td><%=rs.getString("ordertime") %></td>
                		<td><a class="btn btn-danger" href="my_order_delete.jsp?id=<%=rs.getString("id") %>" role="submit">删除</a></td>
                	
                	</tr>
                <%} db.close();  %>
                </table>
      </div>
    </div>
  </div>
    <div class="panel-footer">版权：广州大学华软软件学院</div>

    <script src="jquery-3.2.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
  </body>
</html>