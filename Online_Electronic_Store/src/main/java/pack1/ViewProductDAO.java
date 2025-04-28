package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ViewProductDAO {
	ArrayList<ProductBean> al = new ArrayList<>();
	public ArrayList<ProductBean> retrieveProduct()
	{
		try
		{
			Connection con = DBConnect.getCon();
			PreparedStatement pst = con.prepareStatement("select * from product");
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				ProductBean pb = new ProductBean();
				pb.setPCode(rs.getString(1));
				pb.setPName(rs.getString(2));
				pb.setPCompany(rs.getString(3));
				pb.setPPrice(rs.getString(4));
				pb.setPQty(rs.getString(5));
				
				al.add(pb);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return al;
	}
}
