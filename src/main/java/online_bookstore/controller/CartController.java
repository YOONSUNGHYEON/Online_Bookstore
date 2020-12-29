package online_bookstore.controller;

import org.springframework.web.bind.annotation.RequestMapping;

public class CartController {

    @RequestMapping("/cart/?type=buy")
    public String CartBuy() {return "CartMember/CartBuyPossible";}

    @RequestMapping("/cart/?type=rent")
    public String CartRent() {return "CartMember/CartRentPossible";}
}
