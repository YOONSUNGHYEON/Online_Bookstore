package online_bookstore.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class CartController {

    @RequestMapping("/cart/?type=buy")
    public String CartBuy() {return "cartMember/cartBuyPossible";}

    @RequestMapping("/cart/?type=rent")
    public String CartRent() {return "cartMember/cartRentPossible";}
}
