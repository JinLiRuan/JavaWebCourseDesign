package bookstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginOut
 */
public class LoginOut extends HttpServlet {
   
    public LoginOut() {
        super();
        // TODO Auto-generated constructor stub
    }


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session  = request.getSession(false);
		if(session==null){
            /*response.sendRedirect("index.jsp");*/
            out.print("<script type='text/javascript'>alert('注销成功！');</script>");
       
        }
		else {
			session.removeAttribute("username");
			session.removeAttribute("cart");
			out.print("<script type='text/javascript'>alert('注销成功！');</script>");
	        response.sendRedirect("index.jsp");
		}

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
