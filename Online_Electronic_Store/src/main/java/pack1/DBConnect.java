package pack1;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect 
{
	private static Connection con = null;
	
	private DBConnect() {}
	
	static 
	{
		try 
		{
			con=DriverManager.getConnection(DBInfo.DBUrl,DBInfo.DBUsername,DBInfo.DBPassword);
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	public static Connection getCon()
	{
		return con;
	}
}
