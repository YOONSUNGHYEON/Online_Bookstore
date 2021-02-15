package online_bookstore.Repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import online_bookstore.Entity.Payment;

public interface PaymentRepository extends JpaRepository<Payment,Long> {
    @Query(value = "SELECT * FROM payment WHERE member_num = :num ORDER BY payment_time DESC limit :page,5",nativeQuery = true)
    ArrayList<Payment> myPayment (int num,int page);

    @Query(value = "Select count(*) from payment where member_num = :num",nativeQuery = true)
    Long paymentcount(int num);



}
