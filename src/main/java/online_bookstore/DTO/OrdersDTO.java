package online_bookstore.DTO;

import lombok.Data;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Orders;
@Data
public class OrdersDTO {
		private Long id;
	    private Member member;
	    private String book_Id;



	    public OrdersDTO(Orders orders) {
		// TODO Auto-generated constructor stub
	    	this.member = orders.getMember();
	        this.book_Id = orders.getBook_Id();
	}

	    public OrdersDTO(String item_code, Member member) {
		// TODO Auto-generated constructor stub
	    	this.member = member;
	        this.book_Id = item_code;
	}
}
