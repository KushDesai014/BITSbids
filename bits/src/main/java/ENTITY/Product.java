package ENTITY;

public class Product {
private int pr_id;
private String pr_name;
private double pr_price;
private int pr_availability;
private String pr_img1,pr_img2,pr_desc;
private String category;
private String duration;
private String base_price;
public String getBase_price() {
	return base_price;
}
public void setBase_price(String base_price) {
	this.base_price = base_price;
}
public String getDuration() {
	return duration;
}
public void setDuration(String duration) {
	this.duration = duration;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public int getPr_id() {
	return pr_id;
}
public void setPr_id(int pr_id) {
	this.pr_id = pr_id;
}
public Product() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Product [pr_id=" + pr_id + ", pr_name=" + pr_name + ", pr_price=" + pr_price + ", pr_availability="
			+ pr_availability + ", pr_img1=" + pr_img1 + ", pr_img2=" + pr_img2 + ", pr_desc=" + pr_desc + ", category="
			+ category + ", duration=" + duration + ", base_price=" + base_price + "]";
}
public String getPr_name() {
	return pr_name;
}
public void setPr_name(String pr_name) {
	this.pr_name = pr_name;
}
public double getPr_price() {
	return pr_price;
}
public void setPr_price(double pr_price) {
	this.pr_price = pr_price;
}
public int getPr_availability() {
	return pr_availability;
}
public void setPr_availability(int pr_availability) {
	this.pr_availability = pr_availability;
}
public String getPr_img1() {
	return pr_img1;
}
public void setPr_img1(String pr_img1) {
	this.pr_img1 = pr_img1;
}
public String getPr_img2() {
	return pr_img2;
}
public void setPr_img2(String pr_img2) {
	this.pr_img2 = pr_img2;
}
public String getPr_desc() {
	return pr_desc;
}
public void setPr_desc(String pr_desc) {
	this.pr_desc = pr_desc;
}
}
