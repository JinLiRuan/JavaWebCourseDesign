<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>欢迎注册钉钉网上书城账号</title>

  </head>
  <style>
  * {
margin: 0px;
padding: 0px;
box-sizing: border-box;
}

body {
    background: url("img/beijing.jpg") no-repeat center;
    /*设置图片适应整个页面*/
    background-size: 100% 100%;
    background-attachment:fixed;
}

.reg_back {
    /*设置整体的尺寸、背景色、边距等*/
    width: 850px;
    height: 400px;
    border: 8px solid #eeeeee;
    background: white;
    margin: auto;
    margin-top: 20px;
}

.reg_left {
    /*设置左浮动和外边距*/
    float: left;
    margin: 10px;
}

.reg_left > p:first-child {
    /*设置段落（新用户注册）颜色和字体大小*/
    color: orange;
    font-size: 30px;
}

.reg_left > p:last-child {
    /*设置段落（USER REGISTER）颜色和字体大小*/
    color: #A6A6A6;
    font-size: 20px;
}

.reg_center {
    /*设置中间的各种输入框等*/
    float: left;
    width: 450px;
}

.reg_right {
    /*设置右边段落浮动和外间距*/
    float: right;
    margin: 30px;
}

.reg_right > p:first-child {
    font-size: 15px;
}


.td_left {
    /*设置表单中字体对齐方式和宽度、高度*/
    width: 100px;
    text-align: right;
    height: 40px;
}

.td_right {
    /*设置输入框内边距*/
    padding-left: 40px;
}

#username ,#pw1,#pw2,#Telphone,#address,#checkcode{
    /*设置输入框大小和边框*/
    width: 200px;
    height: 30px;
    border: 1px solid #A4A4A4;
    /* 设置边框为圆角 */
    border-radius: 8px;
    padding-left: 10px;
}

#btn_sub{
    /*注册按钮*/
    background: green;
    width: 100px;
    height: 40px;
    border: 1px solid lime ;
}
  
  
  </style>
  
  
  <body>
  <script>
function validate() {
var pw1 = document.getElementById("pw1").value;
var pw2 = document.getElementById("pw2").value;
if(pw1 == pw2) {
document.getElementById("tishi").innerHTML="<font color='green'><br>两次密码相同</font>";
document.getElementById("submit").disabled = false;
}
else {
document.getElementById("tishi").innerHTML="<font color='red'><br>两次密码不相同</font>";
document.getElementById("submit").disabled = true;
}
}
</script>
 
  
<div class="reg_back">
    <div class="reg_left">
        <p>新用户注册</p>
        <p>USER REGISTER</p>
    </div>
    <div class="reg_center">
        <div class="reg_form">
        <form action="register_success.jsp" method="get">
            <table>
                <tr>
                    <td class="td_left"><label for="username">用户名</label></td>
                    <td class="td_right"><input type="text" name="username" placeholder="请输入用户名"
                                                id="username" required="required"></td>
                </tr>
                <tr>
                    <td class="td_left"><label for="password">密码</label></td>
                    <td class="td_right"><input type="password" name="password" placeholder="请输入密码"
                                                id="pw1" required="required"></td>
                </tr>
                <tr>
                    <td class="td_left"><label for="password">确认密码</label></td>
                    <td class="td_right"><input type="password" name="password" placeholder="请输入密码"
                       id="pw2" onkeyup="validate()"><span id="tishi" required="required"></span></td>
                </tr>
               <tr>
                    <td class="td_left"><label>性别</label></td>
                    <td class="td_right"><input type="radio" name="gender" value="男" checked> 男
                        <input type="radio" required="required" name="gender" value="女"> 女
                    </td>
                </tr>
      
                <tr>
                    <td class="td_left"><label for="Telphone">手机号</label></td>
                    <td class="td_right"><input type="text" name="phone" placeholder="请输入您的手机号"
                                     id="Telphone" required="required"></td>
                </tr>
             
                <tr>
                    <td class="td_left"><label for="address">地址</label></td>
                    <td class="td_right"><input type="text" name="address" placeholder="请输入您的收货地址"
                                        id="address"   required="required"></td>
                </tr>
               
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="注册" id="btn_sub"></td>
                </tr>
            </table>
            </form>
        </div>
        </div>
    </div>
  </body>
</html>
