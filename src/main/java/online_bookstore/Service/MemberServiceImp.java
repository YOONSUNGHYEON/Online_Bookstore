package online_bookstore.Service;


import java.util.ArrayList;

import javax.transaction.Transactional;

import online_bookstore.DTO.PaymentDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Payment;
import online_bookstore.Repository.MemberRepository;
import online_bookstore.Repository.PaymentRepository;

@Service
@Transactional
public class MemberServiceImp implements MemberService{

    @Autowired
    MemberRepository memberRepository;
    @Autowired
    PaymentRepository paymentRepository;

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


    //Member 객체 -> MemberDTO 객체
    public MemberDTO toMemberDTO(Member member){
    	ModelMapper modelMapper = new ModelMapper();
        return modelMapper.map(member,MemberDTO.class);
    }
}
