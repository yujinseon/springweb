package a01_diexp.vo;

import org.springframework.beans.factory.annotation.Autowired;

public class GiftSender {
	private String name;
	
	@Autowired
	private Product prod;
	
	public void sendGift() {
		System.out.println("이름:"+name);
		if(prod!=null) { 

			System.out.println("선물명:"+prod.getName());
			System.out.println("선물가격:"+prod.getPrice());
		}else {
			System.out.println("선물 없음");
		}
	}

	public GiftSender() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GiftSender(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Product getProd() {
		return prod;
	}

	public void setProd(Product prod) {
		this.prod = prod;
	}
	
}
