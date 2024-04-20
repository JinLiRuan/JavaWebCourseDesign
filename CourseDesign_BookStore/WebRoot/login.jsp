<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>欢迎登录钉钉网上书城</title> 
  </head>
  <style>
html{   
    width: 100%;   
    height: 100%;   
    overflow: hidden;   
    font-style: sans-serif;   
}   
body{   
    width: 100%;   
    height: 100%;   
/*     font-family: 'Open Sans',sans-serif;   
    margin: 0;   
    background-color: #4A374A;    */
       background: url("img/timg.gif") no-repeat center;
    /*设置图片适应整个页面*/
    background-size: 100% 100%;
    background-attachment:fixed;
}   
#login{   
    position: absolute;   
    top: 40%;   
    left:50%;   
    margin: -200px 0 0 -150px;   
    width: 300px;   
    height: 400px;   
}   
#login h1{   
    color: #2D2D3F;   
    text-shadow:0 0 10px;   
    letter-spacing: 1px;   
    text-align: center;   
}   
h1{   

    font-size: 2em;   
    margin: 0.67em 0;   
}   
input{   
    width: 278px;   
    height: 18px;   
    margin-bottom: 20px;   
    outline: none;   
    padding: 20px;   
    font-size: 13px;   
    color: #fff;   
    text-shadow:1px 1px 1px;   
    border-top: 1px solid #312E3D;   
    border-left: 1px solid #312E3D;   
    border-right: 1px solid #312E3D;   
    border-bottom: 1px solid #56536A;   
    border-radius: 4px;   
    background-color: #2D2D3F;   
}   
.but{   
    width: 120px;   
    min-height: 40px;   
    display: block;   
    background-color: #2D2D3F;   
    border: 1px solid #3762bc;   
    color: #fff;   
    padding: 9px 14px;   
    font-size: 18px;   
    line-height: normal;   
    border-radius: 5px;   
  /*   margin: 0;  */  

}  


.register{

	float:right;
	margin-top:-43px;
	margin-right:20px;
    width: 120px;   
    min-height: 40px;   
    display: block;   
    background-color: #2D2D3F;   
    border: 1px solid #3762bc;   
    color: #fff;   
    padding: 9px 14px;   
    font-size: 18px;   
    line-height: normal;   
    border-radius: 5px;   
  /*   margin: 0;  */

}

  </style>
  
  <body>
  <div id="login">  
        <h1>Welcome Login</h1>  
        <form method="get" action="login_judge.jsp">  
            <input type="text" required="required" placeholder="请输入用户名" name="username"></input>  
            <input type="password" required="required" placeholder="请输入密码" name="password"></input>  
            <span><button class="but" type="submit">登录</button>  </span>
             <a href="register.jsp"><input class="register" type="button" value="去注册"> </a>
        </form>  
    </div>  
</div>

  </body>
</html>
