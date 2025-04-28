package pack1;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UpdateProductDAO 
{
	public int updateProduct(ProductBean pb) {
		int rowCount=0;
		
		try {
			Connection con=DBConnect.getCon();
			PreparedStatement pstm=con.prepareStatement("update product set PPRICE=?,PQTY=? where PCODE=?");
			
			pstm.setString(1,pb.getPPrice());
			pstm.setString(2, pb.getPQty());
			pstm.setString(3, pb.getPCode());
			rowCount=pstm.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
		return rowCount;
	}

}
