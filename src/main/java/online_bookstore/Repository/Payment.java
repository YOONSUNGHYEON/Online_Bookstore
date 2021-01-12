package online_bookstore.Repository;

import lombok.Getter;
import lombok.NoArgsConstructor;
import online_bookstore.DTO.MemberDTO;

import javax.persistence.*;
import java.sql.Date;

@NoArgsConstructor
@Getter
@Entity
public class Payment {
    @Column(nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    long id;


    @ManyToOne
    @JoinColumn(name= "member_num", nullable=false) //외래키
    private MemberDTO member;

    @ManyToOne
    @JoinColumn(name= "order_id") //외래키
    private Orders orders;

    @Column
    private String payment_status;

    @Column
    private Date payment_time;

    @Column
    private String payment_type;

    @Column
    private long total_price;

    @Column
    private long discount_price;

}
