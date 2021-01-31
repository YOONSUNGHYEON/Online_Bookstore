package online_bookstore.Service;


import online_bookstore.DTO.MemberDTO;
import online_bookstore.DTO.PaymentDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Payment;

import java.util.ArrayList;

public interface MemberService {

    void join(MemberDTO memberDTO);

    MemberDTO login(MemberDTO memberDTO);

    Member login(String id);

}
