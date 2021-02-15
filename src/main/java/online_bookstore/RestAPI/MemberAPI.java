package online_bookstore.RestAPI;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import online_bookstore.DTO.Message;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Payment;
import online_bookstore.Service.MemberService;

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
        Member member =memberService.login(id);
        Message message=new Message();
        if(member !=null){
            message.setMessage("아이디 중복됨");
        }else{
            message.setMessage("아아디 사용가능");
        }
        return message;
    }

    //내정보 가져오기
    @GetMapping("/myinfo/{id}")
    public Member myInfo(@PathVariable(name = "id") String id){
        return memberService.login(id);
    }




}
