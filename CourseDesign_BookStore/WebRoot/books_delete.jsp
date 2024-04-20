<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="bookstore.bean.Book"%>
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
    
    <title>书籍删除处理页面</title>
  
  <body>
  <%
    	String books_id = request.getParameter("id");
    	String sql = "delete from product where id=?";
       	Connection connection = db.getConnection();
       	PreparedStatement pstatement = connection.prepareStatement(sql);
       	pstatement.setString(1, books_id);
        int num = pstatement.executeUpdate();
         if(num != 0){
          System.out.print("修改成功！！！");
         }
         else{
               System.out.print("修改失败！！！");
         }
    	db.close();
    %>
    <script>alert('修改成功！');
 	window.location.href='backstage.jsp';</script>
    
  </body>
</html>
