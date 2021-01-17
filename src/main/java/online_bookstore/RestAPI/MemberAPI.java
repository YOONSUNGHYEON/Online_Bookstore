package online_bookstore.RestAPI;

import online_bookstore.DTO.MemberDTO;
import online_bookstore.DTO.Message;
import online_bookstore.Repository.Orders;
import online_bookstore.Repository.Payment;
import online_bookstore.Service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class MemberAPI {
    @Autowired
    MemberService memberService;

    public MemberAPI(MemberService memberService) {
        this.memberService = memberService;
    }

    //화원가입 중복확인
    @GetMapping("/duplicatecheck/{id}")
    public Message duplicateCheck(@PathVariable(name = "id") String id){
        MemberDTO memberDTO=memberService.login(id);
        Message message=new Message();
        if(memberDTO!=null){
            message.setMessage("아이디 중복됨");
        }else{
            message.setMessage("아아디 사용가능");
        }
        return message;
    }

    //내정보 가져오기
    @GetMapping("/myinfo/{id}")
    public MemberDTO myInfo(@PathVariable(name = "id") String id){
        return memberService.login(id);
    }

    @GetMapping("/myorders/{num}/{page}")
    public ArrayList<Payment> myOrders(@PathVariable(name = "num") int num,@PathVariable(name = "page") int page){

        return memberService.myPayment(num,page);
    }

    @GetMapping("/paymentcount/{num}")
    public Long paymentcount(@PathVariable(name = "num") int num){
        return memberService.paymentcount(num);
    };


}
