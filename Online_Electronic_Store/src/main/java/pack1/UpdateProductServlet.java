package pack1;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/update")
public class UpdateProductServlet extends HttpServlet
{

	ProductBean pb = null;
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		HttpSession session=req.getSession(false);
		if(session==null)
		{
			req.setAttribute("msg", "Session Expired");
			RequestDispatcher rd=req.getRequestDispatcher("AdminLogin.html");
			rd.forward(req, res);
			
		}
		else
		{
			String pc=req.getParameter("pCode");
			ArrayList<ProductBean> al=(ArrayList<ProductBean>)session.getAttribute("ProductList");
			
			ProductBean pb=null;
			Iterator<ProductBean> i=al.iterator();
			while(i.hasNext())
			{ 
				pb=i.next();
				if(pc.equals(pb.getPCode()))
				{
					break;
				}
			}
			pb.setPPrice(req.getParameter("pPrice"));
			pb.setPQty(req.getParameter("pQty"));
			
			int rowCount=new UpdateProductDAO().updateProduct(pb);
			
			if(rowCount>0) {
				System.out.println("data updated");
				req.setAttribute("msg","data updated ");
				RequestDispatcher rd=req.getRequestDispatcher("UpdateProduct.jsp");
				rd.forward(req, res);
			}
			
			
		}
	}
		
	

}
