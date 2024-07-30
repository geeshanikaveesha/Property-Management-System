package payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import user.DBconnect;




public class CardDB {
	
	public static boolean addcard(String cardno,String name,String edate,String cvv) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		Connection con = DBconnect.getConnection();
    		Statement stmt = con.createStatement();
    	    String sql = "insert into carddetails values (0,'"+cardno+"','"+name+"','"+edate+"','"+cvv+"')";
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
	
	
	
	public static List<CardDetails> getcard(String no) {
		
		ArrayList<CardDetails> details = new ArrayList<>();
		
		try {
			
			Connection con = DBconnect.getConnection();
			Statement stmt = con.createStatement();
			String sql = "select * from carddetails where cardno ='"+no+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int cid = rs.getInt(1);
				int cardno = rs.getInt(2);
				String name = rs.getString(3);
				Date edate = rs.getDate(4);
				int cvv = rs.getInt(5);
				
				CardDetails c = new CardDetails(cid,cardno,edate,name,cvv);
				
				details.add(c);
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
			}
		
		return details;	
	}
	
	 public static boolean updatecard(String id,String cardno,String name,String edate,String cvv) {
	    	
	    	boolean isSuccess = false;
			try {
	    		
	    		Connection con = DBconnect.getConnection();
	    		Statement stmt = con.createStatement();
	    		String sql = "update carddetails set cardno='"+cardno+"', name='"+name+"', edate='"+edate+"', cvv='"+cvv+"' where id='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess  = true;
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
	 

	 public static List<CardDetails> getcarddetails(String id) {
	    	
	    	int ID = Integer.parseInt(id);
	    	
	    	ArrayList<CardDetails> details = new ArrayList<>();
	    	
	    	try {
	    		
	    		Connection con = DBconnect.getConnection();
	    		Statement stmt = con.createStatement();
	    		String sql = "select * from carddetails where id='"+ID+"'";
	    		ResultSet rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id1 = rs.getInt(1);
					int cardno = rs.getInt(2);
					String name = rs.getString(3);
					Date date = rs.getDate(4);
					int cvv = rs.getInt(4);
	    			
					CardDetails c = new CardDetails(id1,cardno,date,name,cvv);
	    			details.add(c);
	    			
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return details;	
	    }
	 
	 public static boolean deletecard(String id) {
	    	
	    	int Id = Integer.parseInt(id);
	    	
	    	boolean isSuccess = false;
			try {
	    		
	    		Connection con = DBconnect.getConnection();
	    		Statement stmt = con.createStatement();
	    		String sql = "delete from carddetails where id='"+Id+"'";
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
