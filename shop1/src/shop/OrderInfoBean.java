package shop;

import java.util.Date;

public class OrderInfoBean {

	private int num;		//�ֹ���ȣ
	private String orderer;	//�ֹ��� id 
	private String isbn;	//������		-> �ܷ�Ű
	private Date buydate;	//����
	private int quantity;	//�� ��ŭ
	
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getOrderer() {
		return orderer;
	}
	public void setOrderer(String orderer) {
		this.orderer = orderer;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public Date getBuydate() {
		return buydate;
	}
	public void setBuydate(Date buydate) {
		this.buydate = buydate;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	

}
