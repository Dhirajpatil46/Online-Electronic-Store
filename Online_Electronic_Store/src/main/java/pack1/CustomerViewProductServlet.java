package pack1;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/Vi5")
public class CustomerViewProductServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession session = req.getSession(false);
		
		if(session == null)
		{
			req.setAttribute("msg", "session Expired!");
			RequestDispatcher rd = req.getRequestDispatcher("AdminLogin.html");
			rd.forward(req, res);
		}
		else
		{
			ViewProductDAO vdao = new ViewProductDAO();
			ArrayList<ProductBean> al = vdao.retrieveProduct();
			session.setAttribute("ProductList", al);
			RequestDispatcher rd = req.getRequestDispatcher("CustomerViewProduct.jsp");
			rd.forward(req, res);
		}
	}
}
