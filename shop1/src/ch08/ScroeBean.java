package ch08;

import java.util.Date;

public class ScroeBean {
	
	private String name;
	private int point;
	private Date birth;
	private boolean passed;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public boolean isPassed() {		// ������ Ÿ���� boolean�϶� get ��� is�� ����
		return passed;
	}
	public void setPassed(boolean passed) {
		this.passed = passed;
	}
}
