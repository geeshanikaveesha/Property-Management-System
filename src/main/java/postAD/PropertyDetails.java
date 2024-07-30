package postAD;

public class PropertyDetails {
	
	private int id;
	private String ownername;
	private String email;
    private String phone;
    private String address;
    private String description;
    
    
	public PropertyDetails(int id, String ownername, String email, String phone, String address, String description) {
		
		this.id = id;
		this.ownername = ownername;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.description = description;
	}


	public int getId() {
		return id;
	}


	public String getOwnername() {
		return ownername;
	}


	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getAddress() {
		return address;
	}


	public String getDescription() {
		return description;
	}
	
	
    
    

}
