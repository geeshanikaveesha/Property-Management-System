package payment;

import java.util.Date;

public class CardDetails {

	private int id;
	private int cardno;
	private Date date;
    private String holdername;
    private int cvv;
    
	public CardDetails(int id,int cardno, Date date, String holdername, int cvv) {
	
		this.id=id;
		this.cardno = cardno;
		this.date = date;
		this.holdername = holdername;
		this.cvv = cvv;
	}

	public int getId() {
		return id;
	}

	public int getCardno() {
		return cardno;
	}

	public Date getDate() {
		return date;
	}

	public String getHoldername() {
		return holdername;
	}

	public int getCvv() {
		return cvv;
	}
	
	
    
    
    
}
