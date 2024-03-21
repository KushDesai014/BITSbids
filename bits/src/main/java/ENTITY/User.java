package ENTITY;

public class User {
private String username;
private String password;
private String usertype;
private String email;

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
@Override
public String toString() {
	return "User [username=" + username + ", password=" + password + ", usertype=" + usertype + ", email=" + email
			+ "]";
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getUsertype() {
	return usertype;
}
public void setUsertype(String usertype) {
	this.usertype = usertype;
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}

}
