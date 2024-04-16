package org.pungnam.dto;

public class Member {
	
	private String id;
	private String pw;
	private String name;
	private String age;
	private String email;
	private String visited;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVisited() {
		return visited;
	}
	public void setVisited(String visited) {
		this.visited = visited;
	}
	public Member(String id, String pw, String name, String age, String email, String visited) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.email = email;
		this.visited = visited;
	}
	public Member() {
		super();
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", name=" + name + ", age=" + age + ", email=" + email + ", visited="
				+ visited + "]";
	}

	
	
}
