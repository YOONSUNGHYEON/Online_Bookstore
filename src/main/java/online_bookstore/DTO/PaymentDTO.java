package online_bookstore.DTO;



import java.util.Date;

import lombok.Data;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Payment;
@Data
public class PaymentDTO {

    private Long id;

    private Member member;

    private String payment_status;

    private Date payment_time;

    private String payment_type;

    private int total_price;

    private int discount_price;

    private String payment_name;

    public PaymentDTO(Payment payment) {
        this.id = payment.getId();
        this.member = payment.getMember();
        this.payment_status = payment.getPayment_status();
        this.payment_time = payment.getPayment_time();
        this.payment_type = payment.getPayment_type();
        this.payment_name = payment.getPayment_name();
        this.total_price = payment.getTotal_price();
        this.discount_price = payment.getDiscount_price();
    }



	public PaymentDTO(Member member, String status, Date approved_at, String type,
			Integer amount, String item_name) {
		// TODO Auto-generated constructor stub
        this.member = member;
        this.payment_status = status;
        this.payment_time = approved_at;
        this.payment_type =type;
        this.total_price = amount;
        this.payment_name = item_name;
	}
}
