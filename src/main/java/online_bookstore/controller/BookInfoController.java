package online_bookstore.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import online_bookstore.DTO.BookDTO;
import online_bookstore.Service.BookInfoService;

@RestController
@RequestMapping("/api")
public class BookInfoController {

    @Autowired
    BookInfoService bookInfoService;


    @GetMapping("/booklist")
    public ArrayList<BookDTO> booklist(){ return bookInfoService.booklist(); }

    @GetMapping("/title/{title}")
    public ArrayList<BookDTO> booksearch(@PathVariable(name = "title") String title) {
        return bookInfoService.booksearch(title, 1);
    }
    @GetMapping("/search")
    public ArrayList<BookDTO> booksearch1(@RequestParam("title") String title, @RequestParam("page") int page) {
        return bookInfoService.booksearch1(title, page);
    }
    @GetMapping("/search/id")
    public BookDTO booksearch2(@RequestParam("id") String id) {
        return bookInfoService.booksearchById1(id);
    }
    @GetMapping("/detailbook/{num}")
    public BookDTO detailbook(@PathVariable(name = "num") String num){
        return bookInfoService.booksearchById(num);
    }
    @GetMapping("/detailbook/order/{num}")
    public ArrayList<BookDTO> order(@PathVariable(name = "num") String num){
    	String[] array = num.split("&");
    	System.out.println(num);
    	ArrayList<BookDTO> booklist = new ArrayList<BookDTO>();
    	for(int i=0;i<array.length;i++) {
    		booklist.add(bookInfoService.booksearchById1(array[i]));
    	}
        return booklist;
    }
}
