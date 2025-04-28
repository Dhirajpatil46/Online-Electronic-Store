package pack1;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/alog1")
public class AdminLoginServlet extends HttpServlet  
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{
		AdminLoginDAO ald = new  AdminLoginDAO();
		AdminBean ab = ald.CheckAdminLogin(req.getParameter("aname"),req.getParameter("apwd"));
		
		if(ab==null)
		{
			req.setAttribute("msg", "Invlaid Admin Credentials!");
			RequestDispatcher rd = req.getRequestDispatcher("AdminLogin.html");
			rd.forward(req, res);
		}
		else 
		{
			HttpSession hs = req.getSession();
			hs.setAttribute("ab", ab);
			RequestDispatcher rd = req.getRequestDispatcher("AdminHome.jsp");
			rd.forward(req, res);
		}
	}
}