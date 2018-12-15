package mydb.beans;
import java.sql.Date;
/*
 * Java Bean Class
 * WTS : set data to load table address_book
 */
public class AddressBookBean {
	private int num;
	private String name;
	private String address;
	private Date birthday;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
}
