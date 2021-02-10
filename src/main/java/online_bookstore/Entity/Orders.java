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

import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;

import javax.persistence.*;


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

    public Orders(String book_Id, MemberDTO memberdto){
        this.member = new Member(memberdto);
        this.book_Id = book_Id;
    }


}
