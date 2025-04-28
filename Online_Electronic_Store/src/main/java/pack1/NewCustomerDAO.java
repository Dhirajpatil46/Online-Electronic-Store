package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class NewCustomerDAO
{
	public int insertData(CustomerBean cb)
	{
		int rowCount = 0 ;
		
		try  
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DBConnect.getCon(); 
			PreparedStatement ps =  con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
			
			ps.setString(1,cb.getUNAME());
			ps.setString(2,cb.getPWORD());
			ps.setString(3,cb.getFNAME());
			ps.setString(4,cb.getLNAME());
			ps.setString(5,cb.getADDR());
			ps.setString(6,cb.getMID());
			ps.setString(7,cb.getPHNO());
			
			rowCount = ps.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount; 
	}
}
