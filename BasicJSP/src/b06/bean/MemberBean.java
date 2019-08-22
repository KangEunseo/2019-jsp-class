package b06.bean;

public class MemberBean {
	private String id="";
	private String pw="";
	private String rpw="";
	private String name="";
	private String birth="";
	private String email="";
	public void setId(String id) {
		this.id=id;
	}
	public String getId() {
		return id;
	}
	public void setPw(String pw) {
		this.pw=pw;
	}
	public String getPw() {
		return pw;
	}
	public void setName(String name) {
		this.name=name;
	}
	public String getName() {
		return name;
	}
	public void setBirth(String birth) {
		this.birth=birth;
	}
	public String getBirth() {
		return birth;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String getEmail() {
		return email;
	}
}
