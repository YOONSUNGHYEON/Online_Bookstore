package online_bookstore.Entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.NoArgsConstructor;
import online_bookstore.DTO.OrdersDTO;


@NoArgsConstructor
@Getter
@Entity
public class Orders {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name= "payment_id", nullable=false) //외래키
    private Payment payment;

    private String book_Id;


    public Orders(OrdersDTO ordersdto) {
		// TODO Auto-generated constructor stub
	        this.book_Id = ordersdto.getBook_Id();
	        this.payment = new Payment(ordersdto.getPaymentdto());
	}

    public Orders(String book_Id, Payment payment){
        this.book_Id = book_Id;
        this.payment = payment;
    }


}
