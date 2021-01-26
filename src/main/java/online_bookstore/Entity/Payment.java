package online_bookstore.Entity;

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
import online_bookstore.DTO.PaymentDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Orders;

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

    @ManyToOne
    @JoinColumn(name= "order_id", nullable=false) //외래키
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

    public Payment(PaymentDTO paymentDTO) {
        this.member = paymentDTO.getMember();
        this.orders = paymentDTO.getOrders();
        this.payment_status = paymentDTO.getPayment_status();
        this.payment_time = paymentDTO.getPayment_time();
        this.payment_type = paymentDTO.getPayment_type();
        this.total_price = paymentDTO.getTotal_price();
        this.discount_price = paymentDTO.getDiscount_price();
    }

}
