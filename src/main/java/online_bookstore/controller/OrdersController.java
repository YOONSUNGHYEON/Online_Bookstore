package online_bookstore.controller;


import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Orders;
import online_bookstore.Repository.OrdersRepository;

@RequiredArgsConstructor
@RestController
public class OrdersController {

    private final OrdersRepository ordersRepository;


    @PostMapping("/api/orders")
    public Orders createCart(@RequestBody MemberDTO memberDTO, @RequestBody String book_id){
        Member member=new Member(memberDTO);
        Orders orders = new Orders( book_id , member);
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