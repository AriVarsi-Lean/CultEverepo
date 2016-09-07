package ocbcd.helloworld;

import java.sql.Date; 

public class Models {

	private int id; 
	private Date eventStartdate;
	private Date eventEnddate;
	private String  eventVenue ; 
	private String eventDescription; 
	private int eventOrganiserid;
	String adrAdress;
	private int adrPostcode; 
	private String adrCity;
	private String adrCountry;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getEventStartdate() {
		return eventStartdate;
	}
	public void setEventStartdate(Date eventStartdate) {
		this.eventStartdate = eventStartdate;
	}
	public Date getEventEnddate() {
		return eventEnddate;
	}
	public void setEventEnddate(Date eventEnddate) {
		this.eventEnddate = eventEnddate;
	}
	public String getEventVenue() {
		return eventVenue;
	}
	public void setEventVenue(String eventVenue) {
		this.eventVenue = eventVenue;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}
	public int getEventOrganiserid() {
		return eventOrganiserid;
	}
	public void setEventOrganiserid(int eventOrganiserid) {
		this.eventOrganiserid = eventOrganiserid;
	}
	public int getAdrPostcode() {
		return adrPostcode;
	}
	public void setAdrPostcode(int adrPostcode) {
		this.adrPostcode = adrPostcode;
	}
	public String getAdrCity() {
		return adrCity;
	}
	public void setAdrCity(String adrCity) {
		this.adrCity = adrCity;
	}
	public String getAdrCountry() {
		return adrCountry;
	}
	public void setAdrCountry(String adrCountry) {
		this.adrCountry = adrCountry;
	} 
}
