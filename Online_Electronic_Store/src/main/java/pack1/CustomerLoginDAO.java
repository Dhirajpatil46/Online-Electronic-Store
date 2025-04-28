package pack1;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CustomerLoginDAO 
{
	public CustomerBean CheckCustomerLogin(String aUsername, String aPassword)
	{
		CustomerBean cbean= null;
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DBConnect.getCon();		
			PreparedStatement ps = con.prepareStatement("select * from customer where uname=? and pword=?");
			ps.setString(1, aUsername);
			ps.setString(2, aPassword);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				
				cbean= new CustomerBean();
				cbean.setUNAME(rs.getString(1));
				cbean.setPWORD(rs.getString(2));
				cbean.setFNAME(rs.getString(3));
				cbean.setLNAME(rs.getString(4));
				cbean.setADDR(rs.getString(5));
				cbean.setMID(rs.getString(6));
				cbean.setPHNO(rs.getString(7));
			}
			else 
			{
				System.out.println("Admin Not Found!");
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return cbean;
	}
}
