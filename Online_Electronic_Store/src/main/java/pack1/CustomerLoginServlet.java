package pack1;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/CLog")
public class CustomerLoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		CustomerLoginDAO cld = new  CustomerLoginDAO(); 
		CustomerBean cb = cld.CheckCustomerLogin(req.getParameter("uname"),req.getParameter("upwd"));
		
		if(cb==null)
		{ 
			req.setAttribute("msg", "Invlaid Admin Credentials!");
			RequestDispatcher rd = req.getRequestDispatcher("CustomerLogin.html");
			rd.forward(req, res);
		}
		else 
		{
			HttpSession hs = req.getSession();
			hs.setAttribute("cb1", cb);
			RequestDispatcher rd = req.getRequestDispatcher("CustomerHome.jsp");
			rd.forward(req, res);
		}
	}
}