package online_bookstore.DTO;

import lombok.Data;
import online_bookstore.Entity.Orders;
@Data
public class OrdersDTO {
		private Long id;
	    private PaymentDTO paymentdto;
	    private String book_Id;



	    public OrdersDTO(Orders orders) {
		// TODO Auto-generated constructor stub
	    	this.paymentdto = new PaymentDTO(orders.getPayment());
	        this.book_Id = orders.getBook_Id();
	}

	    public OrdersDTO(String item_code, PaymentDTO paymentdto) {
		// TODO Auto-generated constructor stub
	    	this.paymentdto = paymentdto;
	        this.book_Id = item_code;
	}
}
