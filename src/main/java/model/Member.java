package model;

import java.util.Date;

/**
 * 定義每一筆留言的資訊(POJO) author: version: date:
 */
public class Member {
	private String name; // 暱稱
	private String personID;
	private String phone ;
	private String Email;
	private String password;
	private String birthday;
	
	private String account;
	private Date date; // 時間
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPersonID() {
		return personID;
	}
	public void setPersonID(String personID) {
		this.personID = personID;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	/**
	 * @param name
	 * @param personID
	 * @param phone
	 * @param email
	 * @param password
	 * @param birthday
	 * @param account
	 * @param date
	 */
	public Member(String name, String personID, String phone, String email, String password, String birthday,
			String account, Date date) {
		super();
		this.name = name;
		this.personID = personID;
		this.phone = phone;
		Email = email;
		this.password = password;
		this.birthday = birthday;
		this.account = account;
		this.date = date;
	}
	public Member() {
		// TODO Auto-generated constructor stub
	}


	
	
	
	
}
