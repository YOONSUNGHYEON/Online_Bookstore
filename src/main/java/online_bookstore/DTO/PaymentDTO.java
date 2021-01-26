package online_bookstore.DTO;

import lombok.Data;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Orders;

import javax.persistence.*;
import java.sql.Date;
@Data
public class PaymentDTO {

    private Long id;

    private Member member;

    private Orders orders;

    private String payment_status;

    private Date payment_time;

    private String payment_type;

    private long total_price;

    private long discount_price;

}
