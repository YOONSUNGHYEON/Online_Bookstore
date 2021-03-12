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
    @JoinColumn(name= "member_num", nullable=false) //외래키
    private Member member;

    private String book_Id;

    public Orders(OrdersDTO ordersdto) {
		// TODO Auto-generated constructor stub
	    	this.member = ordersdto.getMember();
	        this.book_Id = ordersdto.getBook_Id();
	}

    public Orders(String book_Id, Member member){
        this.member = member;
        this.book_Id = book_Id;
    }


}
