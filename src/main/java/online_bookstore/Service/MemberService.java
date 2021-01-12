package online_bookstore.Service;


import online_bookstore.DTO.MemberDTO;
import online_bookstore.Repository.Orders;

import java.util.List;
import java.util.Optional;

public interface MemberService {

    void join(MemberDTO memberDTO);

    MemberDTO login(MemberDTO memberDTO);

    MemberDTO login(String id);

    Orders myOrders(int num);
}
