package online_bookstore.Repository;


import lombok.Getter;
import lombok.NoArgsConstructor;
import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;

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
    private MemberDTO member;

    private String book_Id;

    public Cart(String bookId, MemberDTO memberdto){
        this.member = memberdto;
        this.book_Id = bookId;
    }

}
