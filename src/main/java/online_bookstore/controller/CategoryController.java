package online_bookstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	@RequestMapping("/book")
	public String books() {
		return "/category/book";
	}
	
	@RequestMapping("/list")
	public String list() {
		return "/category/list";
	}
}
