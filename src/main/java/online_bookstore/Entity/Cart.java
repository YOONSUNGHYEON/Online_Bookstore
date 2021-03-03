package online_bookstore.Entity;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.NoArgsConstructor;
import online_bookstore.DTO.MemberDTO;

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
    public Cart(String bookId, Member member){
        this.member =member;
        this.book_Id = bookId;
    }
}
