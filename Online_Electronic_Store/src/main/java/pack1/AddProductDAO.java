package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class AddProductDAO 
{
	public int insertData(ProductBean pb) throws Exception
	{
		int rowCount = 0 ;
		
		try  
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DBConnect.getCon(); 
			PreparedStatement ps =  con.prepareStatement("insert into product values(?,?,?,?,?)");
			
			ps.setString(1,pb.getPCode());
			ps.setString(2,pb.getPName());
			ps.setString(3,pb.getPCompany());
			ps.setString(4,pb.getPPrice());
			ps.setString(5,pb.getPQty());
			
			rowCount = ps.executeUpdate();
		} 
		catch (Exception e) 
		{
			//e.printStackTrace();
			throw e;
		}
		return rowCount; 
	}
}
