package feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class feedbackDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean insertfeedback(String fid, String email, String message) {
    	
		
		
    	boolean isSuccess = false;
    	
    	try {
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into feedback values (0,'"+fid+"','"+email+"','"+message+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updatefeedack(String id,String fid, String email, String message) {
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update feedback set fid='"+fid+"',email='"+email+"',message='"+message+"'"
    				+ "where id='"+id+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<feedback> getFeedbackDetails(String id) {
    	
    	int convertedID = Integer.parseInt(id);
    	
    	ArrayList<feedback> details = new ArrayList<>();
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from feedback where fid='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id1 = rs.getInt(1);
				String fid1 = rs.getString(2);
				String email = rs.getString(3);
				String message = rs.getString(4);
    			
				feedback f = new feedback(id1,fid1,email,message);

				details.add(f);

    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return details;	
    }
    
    
    public static boolean deletefeedback(String id) {
    	
    	int Id = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from feedback where id='"+Id+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
    
}
