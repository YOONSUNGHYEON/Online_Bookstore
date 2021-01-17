package online_bookstore.Service;


import online_bookstore.DTO.MemberDTO;
import online_bookstore.Repository.Orders;
import online_bookstore.Repository.Payment;

import java.util.ArrayList;
import java.util.Optional;

public interface MemberService {

    void join(MemberDTO memberDTO);

    MemberDTO login(MemberDTO memberDTO);

    MemberDTO login(String id);

    ArrayList<Payment> myPayment(int num,int page);

    Long paymentcount(int num);
}
