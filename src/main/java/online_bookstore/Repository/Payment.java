package online_bookstore.Repository;

import java.sql.Date;

import javax.persistence.Column;
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
public class Payment{
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    @JoinColumn(name= "member_id", nullable=false) //외래키
    private MemberDTO member;

    @ManyToOne
    @JoinColumn(name= "orders_id", nullable=false) //외래키
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
