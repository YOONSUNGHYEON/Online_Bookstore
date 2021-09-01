package online_bookstore.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import online_bookstore.DTO.OrdersDTO;
import online_bookstore.Entity.Orders;
import online_bookstore.Repository.OrdersRepository;

@Service
public class OrdersService {


	@Autowired
	OrdersRepository OrdersRepository;

	public void save(OrdersDTO ordersDTO)
	{
		Orders orders = new Orders(ordersDTO);
		OrdersRepository.save(orders);
	}

}
