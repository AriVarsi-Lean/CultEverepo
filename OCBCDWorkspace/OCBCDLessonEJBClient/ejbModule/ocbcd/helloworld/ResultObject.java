package ocbcd.helloworld;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class ResultObject {
	@Column(name="Username")
	private final String username;
	@Column(name="Password")
	private final String password;
	@Column(name="Age")
	private final int age;
	@Column(name="Name")
	private final String name;
	@Column(name="Surname")
	private final String surname;
	
	private ResultObject(ResultObjectBuilder builder) {
        this.username = builder.username;
        this.password = builder.password;
        this.age = builder.age;
        this.name = builder.name;
        this.surname = builder.surname;
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
	/*
	public void setUsername(String username){
		this.username = username;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
	
	public void setAge(int age){
		this.age = age;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	public void setSurname(String surname){
		this.surname = surname;
	}
*/
	
	@Override
	public String toString() {
		return 	"Username: " + username + "\n" + 
				"Password: " + password + "\n"+
				"Age: " + age + "\n" +
				"Name: " + name + "\n" +
				"Surname:";
	}
	
	
	public static class ResultObjectBuilder{
    private final String username;
    private final String password;
    private int age;
    private String name;
    private String surname;

    public ResultObjectBuilder(String username, String password) {
        this.username= username;
        this.password = password;
    }
  /*  public ResultObjectBuilder(String username2, String password2, int age2, String name2,
			String surname2) {
        this.username= username2;
        this.password = password2;
    }*/

    public ResultObjectBuilder age(int age) {
        this.age = age;
        return this;
    }

    public ResultObjectBuilder name(String name) {
        this.name = name;
        return this;
    }

    public ResultObjectBuilder surname(String surname) {
        this.surname = surname;
        return this;
    }

    public ResultObject build() {
        return new ResultObject(this);
    }

}
}
