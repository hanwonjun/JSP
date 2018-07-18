package shop;


// java´Â ´ÙÁß»ó¼ÓÀÌ ¾ÈµÇ¼­ ºÏºó Ä«Æ®ºó

public class BookCartBean extends CartBean {
	private String title;
	private int price;
	private int sum;
	private String author;
	
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
}
