package ENTITY;

public class Seller {
private int sell_id;
private String sellname;
private String sell_branch;
private String batch;
private String contactno;
private String student_id;
private String stname;
private String hostel;
public String getHostel() {
	return hostel;
}
public void setHostel(String hostel) {
	this.hostel = hostel;
}
public int getSell_id() {
	return sell_id;
}
public void setSell_id(int sell_id) {
	this.sell_id = sell_id;
}
public String getSellname() {
	return sellname;
}
public void setSellname(String sellname) {
	this.sellname = sellname;
}
public String getSell_branch() {
	return sell_branch;
}
public void setSell_branch(String sell_branch) {
	this.sell_branch = sell_branch;
}
public String getBatch() {
	return batch;
}
public void setBatch(String batch) {
	this.batch = batch;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
public String getStudent_id() {
	return student_id;
}
public void setStudent_id(String student_id) {
	this.student_id = student_id;
}
public String getStname() {
	return stname;
}
public void setStname(String stname) {
	this.stname = stname;
}
@Override
public String toString() {
	return "Seller [sell_id=" + sell_id + ", sellname=" + sellname + ", sell_branch=" + sell_branch + ", batch=" + batch
			+ ", contactno=" + contactno + ", student_id=" + student_id + ", stname=" + stname + ", hostel=" + hostel
			+ "]";
}
public Seller() {
	super();
	// TODO Auto-generated constructor stub
}

}
