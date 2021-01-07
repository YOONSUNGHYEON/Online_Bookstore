package online_bookstore.DAO;


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

    @ManyToOne
    @JoinColumn(name = "Book_Id") //외래키
    private BookDTO book;

    public Cart(BookDTO bookdto, MemberDTO memberdto){
        this.member = memberdto;
        this.book = bookdto;
    }
}
