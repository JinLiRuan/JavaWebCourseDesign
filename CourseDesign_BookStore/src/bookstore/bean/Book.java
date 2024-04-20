package bookstore.bean;

import java.io.Serializable;

public class Book implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer books_id;
	private String books_name;
	private Double price;
	private String catagory;
	private Integer pnum;
	private String imgurl;
	private String description;
	public Integer getBooks_id() {
		return books_id;
	}
	public void setBooks_id(Integer books_id) {
		this.books_id = books_id;
	}
	public String getBooks_name() {
		return books_name;
	}
	public void setBooks_name(String books_name) {
		this.books_name = books_name;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getCatagory() {
		return catagory;
	}
	public void setCatagory(String catagory) {
		this.catagory = catagory;
	}
	public Integer getPnum() {
		return pnum;
	}
	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}
	public String getImgurl() {
		return imgurl;
	}
	public void setImgurl(String imgurl) {
		this.imgurl = imgurl;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "books [books_id=" + books_id + ", books_name=" + books_name
				+ ", price=" + price + ", catagory=" + catagory + ", pnum="
				+ pnum + ", imgurl=" + imgurl + ", description=" + description
				+ "]";
	}
	
	
	
	
}
