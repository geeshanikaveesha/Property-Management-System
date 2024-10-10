package report;
import java.sql.Connection; // Importing the Connection class from java.sql package, which is used to establish a connection to the database.
import java.sql.DriverManager; // Importing DriverManager class that manages a set of JDBC drivers.

public class DBconnect { 
	
	// Database connection details
	public static String url = "jdbc:mysql://localhost:3306/oop"; 
	public static String user = "root"; 
	public static String password = "Aa12345678"; 
	public static Connection con;

	
	public static Connection getConnection() {
		
		try {
			// Load the MySQL JDBC driver class
			Class.forName("com.mysql.jdbc.Driver"); 
			
			
			con = DriverManager.getConnection(url, user, password); 
			
		}
		catch (Exception e) { 
			System.out.println("Database connection is not success!!!"); 
		}
		
		return con;
	}
}
