package jdbcbean;

public class MemberBean_2401 {
	
	private String id="";
	private String pwd="";
	private String name="";
	private String num1="";
	private String num2="";
	private String email="";
	private String phone="";
	private String zipcode="";
	private String address="";
	private String job="";
	
	public String getId() {
		if(id == null)
			return "";
		else
			return id;
	}
	public void setId(String id) {
		if(id == null)
			this.id = "";
		else
			this.id = id;
	}
	
	public String getPwd() {
		if(pwd == null)
			return "";
		else
			return pwd;
	}
	public void setPwd(String pwd) {
		if(pwd == null)
			this.pwd = "";
		else
			this.pwd = pwd;
	}
	
	public String getName() {
		if(name == null)
			return "";
		else
			return name;	
	}
	public void setName(String name) {
		if(name == null)
			this.name = "";
		else
			this.name = name;
	}
	
	public String getEmail() {
		if(email == null)
			return "";
		else
			return email;	
	}
	public void setEmail(String email) {
		if(email == null)
			this.email = "";
		else
			this.email = email;
	}
	
	public String getNum1() {
		if(num1 == null)
			return "";
		else
			return num1;
	}
	public void setNum1(String num1) {
		if(num1 == null)
			this.num1 = "";
		else
			this.num1 = num1;
	}
	
	public String getNum2() {
		if(num2 == null)
			return "";
		else
			return num2;
	}
	public void setNum2(String num2) {
		if(num2 == null)
			this.num2 = "";
		else
			this.num2 = num2;
	}
	
	public String getPhone() {
		if(phone == null)
			return "";
		else
			return phone;
	}
	public void setPhone(String phone) {
		if(phone == null)
			this.phone = "";
		else
			this.phone = phone;
	}
	
	public String getZipcode() {
		if(zipcode == null)
			return "";
		else
			return zipcode;
	}
	public void setZipcode(String zipcode) {
		if(zipcode == null)
			this.zipcode = "";
		else
			this.zipcode = zipcode;
	}
	
	public String getAddress() {
		if(address == null)
			return "";
		else
			return address;
	}
	public void setAddress(String address) {
		if(address == null)
			this.address = "";
		else
			this.address = address;
	}
	
	public String getJob() {
		if(job == null)
			return "";
		else
			return job;
	}
	public void setJob(String job) {
		if(job == null)
			this.job = "";
		else
			this.job = job;
	}
	
}