package helper;
import java.sql.*;
public class Conp {

	private static Connection con;
	public static Connection getconnection() {
		try {
			if(con==null) {
			Class.forName("com.mysql.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","");
			}	
	}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return con;
		
	}
}
