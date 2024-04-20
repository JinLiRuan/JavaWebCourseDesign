package bookstore.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import bookstore.bean.UserBean;
import bookstore.db.DBHelper;

/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter implements Filter {

    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	
	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if (username != null) {
			try {
			    Connection connection = DBHelper.getConnection();
				Statement statement = connection.createStatement();
				
				String sql = "select * from user where username =" + username + "and password ="+password;
			    ResultSet resultSet = statement.executeQuery(sql);
				if (resultSet.next()) {
					
				/*	 <script>
				     	alert('恭喜你，注册成功！');
				     	window.location.href='login.jsp';
				 </script>*/
					PrintWriter out = response.getWriter();
					out.println("<script>");// 输出相应的HTML源文件
					out.println("alert('恭喜登录成功！，欢迎！'+ username)");
					out.println("/script");
					chain.doFilter(request, response);
			}else {
				PrintWriter out = response.getWriter();
				out.println("<script>");// 输出相应的HTML源文件
				out.println("alert('抱歉，用户名或密码错误！')");
				out.println("/script");
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			}
				
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		
		
	}


	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
