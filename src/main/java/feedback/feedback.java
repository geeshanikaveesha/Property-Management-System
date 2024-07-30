package feedback;

public class feedback {
	
	private int id;
	private String fid;
    private String email;
    private String message;
    
	public feedback(int id, String fid, String email, String message) {
	
		this.id = id;
		this.fid = fid;
		this.email = email;
		this.message = message;
	}

	public int getId() {
		return id;
	}

	public String getFid() {
		return fid;
	}

	public String getEmail() {
		return email;
	}

	public String getMessage() {
		return message;
	}
	

}
