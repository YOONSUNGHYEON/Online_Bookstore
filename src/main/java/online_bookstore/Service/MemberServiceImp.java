package online_bookstore.Service;

import online_bookstore.DTO.MemberDTO;
import online_bookstore.Repository.MemberRepository;
import online_bookstore.Repository.Orders;
import online_bookstore.Repository.OrdersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class MemberServiceImp implements MemberService{

    @Autowired
    MemberRepository memberRepository;
    OrdersRepository ordersRepository;

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
    public Orders myOrders(int num) {
        return null;
    }
}
