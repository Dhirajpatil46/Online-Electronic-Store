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


@WebServlet("/buying")
public class BuyingProductServlet extends HttpServlet
{

	ProductBean pb = null;
	@Override
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
			int pp = Integer.parseInt(req.getParameter("pPrice"));
			int rq = Integer.parseInt(req.getParameter("rQty")); 
			int pq = Integer.parseInt(req.getParameter("pQty")); 
			
			
			int charges =  pp*rq;
			
			if(rq<pq)
			{
				int result = pq-rq;
				pq=result;
				String str = String.valueOf(result);
				pb.setPQty(str);
			}
			else 
			{
				throw new ServletException("Insuffient Quantity!");
			}
			
			int rowCount=new UpdateProductDAO().updateProduct(pb);
			
			if(rowCount>0) 
			{
				System.out.println("data updated");
				req.setAttribute("msg","Your Order is Placed Successfully!");
				req.setAttribute("msg1","You Have Charged "+charges+"/rs!");
				RequestDispatcher rd=req.getRequestDispatcher("OrderConfirmed.jsp");
				rd.forward(req, res);
			}	
			else 
			{
				throw new ServletException("Order Not Confirmed!");
			}
		}
	}
		
	

}
