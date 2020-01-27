package CustomerTask4.Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider implements MyConnection{

static Connection con = null;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //Connection Driver Info oracle.drive.oracleDriver
			
			con = DriverManager.getConnection(url,userName,password);
 		}catch(Exception e) {
			System.out.println(e);
		}
		
		return con;
		
	}
}
