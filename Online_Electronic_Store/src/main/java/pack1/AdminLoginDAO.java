package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminLoginDAO 
{
	public AdminBean CheckAdminLogin(String aUsername, String aPassword)
	{
		AdminBean abean = null;
		try 
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DBConnect.getCon();		
			PreparedStatement ps = con.prepareStatement("select * from admin where ausername=? and apassword=?");
			ps.setString(1, aUsername);
			ps.setString(2, aPassword);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{
				
				abean= new AdminBean();
				abean.setaUsername(rs.getString(1));
				abean.setaPassword(rs.getString(2));
				abean.setaFname(rs.getString(3));
				abean.setaLname(rs.getString(4));
				abean.setaAddress(rs.getString(5));
				abean.setaMailId(rs.getString(6));
				abean.setaPhoneNo(rs.getString(7));
			}
			else 
			{
				System.out.println("Admin Not Found!");
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return abean;
	}
}
