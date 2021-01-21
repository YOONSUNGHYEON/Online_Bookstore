package online_bookstore.controller;


import lombok.RequiredArgsConstructor;
import online_bookstore.Repository.Orders;
import online_bookstore.Repository.OrdersRepository;
import online_bookstore.DTO.BookDTO;
import online_bookstore.DTO.MemberDTO;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequiredArgsConstructor
@RestController
public class OrdersController {

    private final OrdersRepository ordersRepository;


    @PostMapping("/api/orders")
    public Orders createCart(@RequestBody MemberDTO memberdto, @RequestBody String book_id){
        Orders orders = new Orders( book_id , memberdto);
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