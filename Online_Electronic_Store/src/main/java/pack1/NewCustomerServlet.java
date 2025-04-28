package pack1;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ans")
public class NewCustomerServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
	{
		HttpSession hs =  req.getSession();
		if(hs==null)
		{
			req.setAttribute("msg", "Session Experied!");
			RequestDispatcher rd =  req.getRequestDispatcher("AdminLogin.html");
			rd.forward(req, res);
		}
		else 
		{
			CustomerBean cbean = new CustomerBean();
			 
			cbean.setUNAME(req.getParameter("uName"));
			cbean.setPWORD(req.getParameter("uPass"));
			cbean.setFNAME(req.getParameter("fName"));
			cbean.setLNAME(req.getParameter("lName"));
			cbean.setADDR(req.getParameter("Add"));
			cbean.setMID(req.getParameter("Mid"));
			cbean.setPHNO(req.getParameter("PNo")); 
			
			int RowCount = new NewCustomerDAO().insertData(cbean);
			if(RowCount>0)
			{
				req.setAttribute("msg", "Data Inserted Successfully");
				RequestDispatcher rd =  req.getRequestDispatcher("AddUser.jsp");
				rd.forward(req, res);
			}
		}		
	}
}