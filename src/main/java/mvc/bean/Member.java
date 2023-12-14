package mvc.bean;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.google.gson.Gson;

// 對應 spring form 的表單資訊
public class Member {
	private Integer id; // 序號
	private String name; // 姓名
	private Integer age; // 年齡
	private String memberId ; // 身分證字號
	private String password ; // 密碼
	private String email ; // 信箱
	
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
	private Date birth; // 生日
	
	private Date createDate; // 申請日期
	private Integer typeIds; // 身分Id(給表單用)【稅務身分】(複選)
	private TypeData types; // 身分(給list呈現用)
	
	private Integer sexId; // 性別Id(給表單用)
	private SexData sex; // 性別(給list呈現用)
	
	
	
	// ---------------------------------------------------------
	
	@Override
	public String toString() {
		return new Gson().toJson(this);
	}



	public Integer getId() {
		return id;
	}



	public void setId(Integer id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public Integer getAge() {
		return age;
	}



	public void setAge(Integer age) {
		this.age = age;
	}



	public String getMemberId() {
		return memberId;
	}



	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Date getBirth() {
		return birth;
	}



	public void setBirth(Date birth) {
		this.birth = birth;
	}



	public Date getCreateDate() {
		return createDate;
	}



	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}



	public Integer getTypeIds() {
		return typeIds;
	}



	public void setTypeIds(Integer typeIds) {
		this.typeIds = typeIds;
	}



	public TypeData getTypes() {
		return types;
	}



	public void setTypes(TypeData types) {
		this.types = types;
	}



	public Integer getSexId() {
		return sexId;
	}



	public void setSexId(Integer sexId) {
		this.sexId = sexId;
	}



	public SexData getSex() {
		return sex;
	}



	public void setSex(SexData sex) {
		this.sex = sex;
	}



}