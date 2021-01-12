package online_bookstore.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import online_bookstore.DTO.BookDTO;
import online_bookstore.Service.BookInfoService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	@Autowired
    BookInfoService bookInfoService;
	
	@RequestMapping("/book")
	public String books() {
		return "/category/book";
	}
	
	@RequestMapping("/list")
	public String list() {
		return "/category/list";
	}
	
	@GetMapping("/{id}")
	public String bookList(@PathVariable int id, Model model) {
		model.addAttribute("books", bookInfoService.categoryBookList(id));
		return "/category/book";
	}
	
}
