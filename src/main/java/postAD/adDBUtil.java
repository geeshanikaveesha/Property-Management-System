package postAD;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import user.DBconnect;

public class adDBUtil {


	public static boolean postad(String owner,String email,String phone,String address,String desc) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		Connection con = DBconnect.getConnection();
    		Statement stmt = con.createStatement();
    	    String sql = "insert into propertyad values (0,'"+owner+"','"+email+"','"+phone+"','"+address+"','"+desc+"')";
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
	
	 public static List<PropertyDetails> getpostdetails(String name) {
	    	
	    	
	    	ArrayList<PropertyDetails> details = new ArrayList<>();
	    	
	    	try {
	    		
	    		Connection con = DBconnect.getConnection();
	    		Statement stmt = con.createStatement();
	    		String sql = "select * from propertyad where ownername='"+name+"'";
	    		ResultSet rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id1 = rs.getInt(1);
	    			String owner = rs.getString(2);
					String email = rs.getString(3);
					String phone = rs.getString(4);
					String address = rs.getString(5);
					String desc = rs.getString(6);
	    			
					PropertyDetails p = new PropertyDetails(id1, owner, email, phone, address, desc);
					
	    			details.add(p);
	    			
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return details;	
	    }
	 
	 public static boolean updatead(String id,String owner,String email,String phone,String address,String desc) {
	    	
	    	boolean isSuccess = false;
			try {
	    		
	    		Connection con = DBconnect.getConnection();
	    		Statement stmt = con.createStatement();
	    		String sql = "UPDATE propertyad SET ownername='"+owner+"',email='"+email+"',phone='"+phone+"',address='"+address+"',description='"+desc+"'"+ " WHERE id='"+id+"'";
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
	 
	 
	 
	 public static boolean deletecard(String id) {
	    	
	    	int Id = Integer.parseInt(id);
	    	
	    	boolean isSuccess = false;
			try {
	    		
	    		Connection con = DBconnect.getConnection();
	    		Statement stmt = con.createStatement();
	    		String sql = "delete from propertyad where id='"+Id+"'";
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
