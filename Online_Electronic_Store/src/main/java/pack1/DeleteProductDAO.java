package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteProductDAO 
{
	public int deleteProduct(String pcode)
	{
		int rowCount = 0;
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver"); 
			Connection con = DBConnect.getCon();
			PreparedStatement ps =  con.prepareStatement("delete from product where pcode=?");
			ps.setString(1,pcode);
			rowCount = ps.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount; 
	}
}
