package pack1;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/aps")
public class AddProductServlet extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException 
	{
		try 
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
				ProductBean pbean = new ProductBean();
				 
				pbean.setPCode(req.getParameter("pCode"));
				pbean.setPName(req.getParameter("pName"));
				pbean.setPCompany(req.getParameter("pCompany"));
				pbean.setPPrice(req.getParameter("pPrice"));
				pbean.setPQty(req.getParameter("pQty"));
				
				int RowCount = new AddProductDAO().insertData(pbean);
				if(RowCount>0)
				{
					req.setAttribute("msg", "Data Inserted Successfully");
					RequestDispatcher rd =  req.getRequestDispatcher("AddProduct.jsp");
					rd.forward(req, res);
				}
			}		
		} 
		catch (Exception e) 
		{
			req.setAttribute("msg", "Duplicate Product Codes Are Not Allowed!");
			req.getRequestDispatcher("Error.jsp").forward(req, res);
		}
	}
}