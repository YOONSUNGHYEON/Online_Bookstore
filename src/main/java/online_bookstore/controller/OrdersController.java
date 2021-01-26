package online_bookstore.controller;


import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Orders;
import online_bookstore.Repository.OrdersRepository;
import online_bookstore.DTO.BookDTO;
import online_bookstore.Entity.Member;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class OrdersController {

    private final OrdersRepository ordersRepository;


    @PostMapping("/api/orders")
    public Orders createCart(@RequestBody MemberDTO memberDTO){
        Member member=new Member(memberDTO);
        Orders orders = new Orders( memberDTO.getBook_Id() , member);
        return ordersRepository.save(orders);
    }

    @GetMapping("/api/orders")
    public List<Orders> getCart(){
        return ordersRepository.findAll();
    }

    @DeleteMapping("/api/orders/{id}")
    public Long deleteOrders(@PathVariable Long id){
        ordersRepository.deleteById(id);
        return id;
    }

}