package online_bookstore.Repository;


import lombok.Getter;
import lombok.NoArgsConstructor;
import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;

import javax.persistence.*;

@NoArgsConstructor
@Getter
@Entity
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name= "member_num", nullable=false) //외래키
    private Member member;


    private String book_Id;

    public Cart(String bookId, MemberDTO memberdto){
        this.member = new Member(memberdto);
        this.book_Id = bookId;
    }

}
