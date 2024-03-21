package ENTITY;
import java.sql.Date;

public class Auction {
	private int auc_id;
	private int pr_id;
	private int buy_id;
	private int sell_id;
	private String auc_amt;
	private Date date_of_tr;
	@Override
	public String toString() {
		return "auction [auc_id=" + auc_id + ", pr_id=" + pr_id + ", buy_id=" + buy_id + ", sell_id=" + sell_id
				+ ", auc_amt=" + auc_amt + ", date_of_tr=" + date_of_tr + "]";
	}
	public int getAuc_id() {
		return auc_id;
	}
	public void setAuc_id(int auc_id) {
		this.auc_id = auc_id;
	}
	public int getPr_id() {
		return pr_id;
	}
	public void setPr_id(int pr_id) {
		this.pr_id = pr_id;
	}
	public int getBuy_id() {
		return buy_id;
	}
	public void setBuy_id(int buy_id) {
		this.buy_id = buy_id;
	}
	public int getSell_id() {
		return sell_id;
	}
	public void setSell_id(int sell_id) {
		this.sell_id = sell_id;
	}
	public String getAuc_amt() {
		return auc_amt;
	}
	public void setAuc_amt(String auc_amt) {
		this.auc_amt = auc_amt;
	}
	public Date getDate_of_tr() {
		return date_of_tr;
	}
	public void setDate_of_tr(Date date_of_tr) {
		this.date_of_tr = date_of_tr;
	}
	
}
