package online_bookstore.Entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.NoArgsConstructor;
import online_bookstore.DTO.PaymentDTO;

@NoArgsConstructor
@Getter
@Entity
public class Payment{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name= "member_num", nullable=false) //외래키
    private Member member;


    @Column
    private String payment_status;

    @Column
    private Date payment_time;

    @Column
    private String payment_type;

    @Column
    private int total_price;

    @Column
    private int discount_price;

    @Column
    private String payment_name;

    public Payment(PaymentDTO paymentDTO) {
    	this.id = paymentDTO.getId();
        this.member = paymentDTO.getMember();
        this.payment_status = paymentDTO.getPayment_status();
        this.payment_time = paymentDTO.getPayment_time();
        this.payment_type = paymentDTO.getPayment_type();
        this.total_price = paymentDTO.getTotal_price();
        this.discount_price = paymentDTO.getDiscount_price();
        this.payment_name = paymentDTO.getPayment_name();
    }


}
