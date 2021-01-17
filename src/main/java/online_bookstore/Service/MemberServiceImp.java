package online_bookstore.Service;

import online_bookstore.DTO.MemberDTO;
import online_bookstore.Repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.Optional;

@Service
@Transactional
public class MemberServiceImp implements MemberService{

    @Autowired
    MemberRepository memberRepository;
    @Autowired
    PaymentRepository paymentRepository;

    @Override
    public void join(MemberDTO memberDTO) {
        memberRepository.save(memberDTO);
    }

    @Override
    public MemberDTO login(MemberDTO memberDTO) {
        return  memberRepository.findById(memberDTO);
    }

    @Override
    public MemberDTO login(String id) {
        return memberRepository.findById(id);
    }

    @Override
    public ArrayList<Payment> myPayment(int num,int page) {
        page=(page-1)*5;
        return paymentRepository.myPayment(num,page);
    }

    @Override
    public Long paymentcount(int num) {

        return paymentRepository.paymentcount(num);
    }

}
