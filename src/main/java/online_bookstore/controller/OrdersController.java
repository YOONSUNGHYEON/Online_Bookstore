package online_bookstore.controller;


import org.springframework.web.bind.annotation.RestController;

import lombok.RequiredArgsConstructor;
import online_bookstore.Repository.OrdersRepository;

@RequiredArgsConstructor
@RestController
public class OrdersController {

    private final OrdersRepository ordersRepository;



	/*@PostMapping("/api/orders")
	public Orders createOrders(@RequestBody MemberDTO memberDTO) {
		//Member member = new Member(memberDTO);
		//Orders orders = new Orders(memberDTO.getBook_Id(), memberDTO);
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
    }*/

}