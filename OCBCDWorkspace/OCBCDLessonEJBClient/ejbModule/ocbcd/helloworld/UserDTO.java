package ocbcd.helloworld;

import java.io.Serializable;

public class UserDTO implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private final String username;
	private final String password;
	private final int age;
	private final String name;
	private final String surname;
	
	private UserDTO(UserDTOBuilder obj){
		this.username = obj.username;
		this.password = obj.password;
		this.age = obj.age;
		this.name = obj.name;
		this.surname = obj.surname;
	}
	
	public UserDTO(String username2, String password2, int age2, String name2,
			String surname2) {
		this.username = username2;
		this.password = password2;
		this.age = age2;
		this.name = name2;
		this.surname = surname2;
	}

	public String getUsername(){
		return this.username;
	}
	
	public String getPassword(){
		return this.password;
	}
	
	public int getAge(){
		return this.age;
	}
	
	public String getName(){
		return this.name;
	}
	
	public String getSurname(){
		return this.surname;
	}
	

	public static class UserDTOBuilder{
	    private final String username;
	    private final String password;
	    private int age;
	    private String name;
	    private String surname;

	    public UserDTOBuilder(ResultObject res) {
	        this.username= res.getUsername();
	        this.password = res.getPassword();
	    }

	    public UserDTOBuilder age(ResultObject res) {
	        this.age = res.getAge();
	        return this;
	    }

	    public UserDTOBuilder name(ResultObject res) {
	        this.name = res.getName();
	        return this;
	    }

	    public UserDTOBuilder surname(ResultObject res) {
	        this.surname = res.getSurname();
	        return this;
	    }

	    public UserDTO build() {
	        return new UserDTO(this);
	    }

	}
}	
