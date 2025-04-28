package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class BuyingProductDAO  
{
	public int BuyProduct(ProductBean pb)
	{ 
		int rowCount = 0 ;
		
		try  
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con=DBConnect.getCon();
			PreparedStatement pstm=con.prepareStatement("update product set PQTY=? where PCODE=?");
			
			pstm.setString(2, pb.getPQty());
			pstm.setString(3, pb.getPCode());
			rowCount=pstm.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rowCount; 
	}
}
