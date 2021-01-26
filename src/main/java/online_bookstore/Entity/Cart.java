package online_bookstore.Entity;


import lombok.Getter;
import lombok.NoArgsConstructor;
import online_bookstore.DTO.BookDTO;
import online_bookstore.Entity.Member;

import javax.persistence.*;

@NoArgsConstructor
@Getter
@Entity
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name= "member_num", nullable=false) //외래키
    private Member member;

    private String book_Id;

    public Cart(String bookdto, Member memberdto){
        this.member = memberdto;
        this.book_Id = bookdto;
    }
}
