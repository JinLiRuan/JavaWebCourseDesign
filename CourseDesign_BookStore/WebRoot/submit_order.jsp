<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Date" import="java.text.SimpleDateFormat"%>
<jsp:useBean id="db" class="bookstore.db.DBHelper" scope="session"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'submit_order.jsp' starting page</title>

  </head>
  <body>
  
  <%
  
  
        String username = (String)application.getAttribute("username");
             System.out.println(username);
           	String sql = "select phone,address from user where username = ?"; 
           	Connection connection = db.getConnection();
           	PreparedStatement preStatement = connection.prepareStatement(sql);
           	preStatement.setString(1, username);
           	ResultSet rs2 = preStatement.executeQuery();
           	int num;
           
           if(rs2.next()){
            Date date = new Date();
			SimpleDateFormat sdFormat = new SimpleDateFormat("HHmmssSSS");
			String id = sdFormat.format(date);
			application.setAttribute("id", id);
            String address = rs2.getString("address");
            username = (String)application.getAttribute("username");
            String receivername = (String)application.getAttribute("username");
            String phone = rs2.getString("phone");
            String time = (String)application.getAttribute("current");
     
            sql = "insert into orders(id,receiverAddress,receiverName,receiverPhone,ordertime,user_id) value(?,?,?,?,?,?)";
            connection = db.getConnection();
            preStatement = connection.prepareStatement(sql);
            preStatement.setString(1, id);
            preStatement.setString(2, address);
            preStatement.setString(3, receivername);
            preStatement.setString(4, phone);
            preStatement.setString(5,time);
            preStatement.setString(6, username);
           num = preStatement.executeUpdate();
            if(num != 0){
            System.out.print("数据成功插入！！！");
           }
           else{
                 System.out.print("数据插入失败！！！");
           }
         }
           db.close(); 
   %>
   
       <script>alert('订单提交成功！');
 	window.location.href='my_order.jsp';</script>
  </body>
</html>
