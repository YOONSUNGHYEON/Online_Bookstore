package online_bookstore.RestAPI;

import online_bookstore.DTO.PaymentDTO;
import online_bookstore.Service.MemberService;
import online_bookstore.Service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
@RequestMapping("/api")
public class PaymentAPI {
    @Autowired
    PaymentService paymentService;

    //나의 결재내역 조회 num = 회원고유번호
    @GetMapping("/myorders/{num}/{page}")
    public ArrayList<PaymentDTO> myOrders(@PathVariable(name = "num") int num, @PathVariable(name = "page") int page){
        return paymentService.myPayment(num,page);
     }
    //나의 결재내역 페이징 count  num = 회원고유번호
    @GetMapping("/paymentcount/{num}")
    public Long paymentcount(@PathVariable(name = "num") int num){
        return paymentService.paymentcount(num);
    };
}
