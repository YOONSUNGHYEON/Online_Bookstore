package online_bookstore.Service;

import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Payment;
import online_bookstore.Repository.*;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;

@Service
@Transactional
public class MemberServiceImp implements MemberService{

    @Autowired
    MemberRepository memberRepository;
    @Autowired
    PaymentRepository paymentRepository;
    @Autowired
    ModelMapper modelMapper;
    @Override
    public void join(MemberDTO memberDTO) {
        Member member=new Member(memberDTO);
        memberRepository.save(member);
    }

    @Override
    public MemberDTO login(MemberDTO memberDTO) {
        Member member=new Member(memberDTO);
        return  toMemberDTO(memberRepository.findById(member));
    }

    @Override
    public Member login(String id) {
        return memberRepository.findById(id);
    }

    @Override
    public ArrayList<Payment> myPayment(int num, int page) {
        page=(page-1)*5;
        return paymentRepository.myPayment(num,page);
    }

    @Override
    public Long paymentcount(int num) {

        return paymentRepository.paymentcount(num);
    }
    //Member 객체 -> MemberDTO 객체
    public MemberDTO toMemberDTO(Member member){
        return modelMapper.map(member,MemberDTO.class);
    }
}
