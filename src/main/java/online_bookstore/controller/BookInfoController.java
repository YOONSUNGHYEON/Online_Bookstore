package online_bookstore.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import online_bookstore.DTO.BookDTO;
import online_bookstore.Service.BookInfoService;

@RestController
@RequestMapping("/api")
public class BookInfoController {

    @Autowired
    BookInfoService bookInfoService;


    @GetMapping("/booklist")
    public ArrayList<BookDTO> booklist(){ return bookInfoService.newbooklist(); }

    @GetMapping("/title/{title}")
    public ArrayList<BookDTO> booksearch(@PathVariable(name = "title") String title) {
        System.out.println(title);
        return bookInfoService.booksearch(title);
    }

    @GetMapping("/detailbook/{num}")
    public ArrayList<BookDTO> detailbook(@PathVariable(name = "num") String num){
        return bookInfoService.booksearchById(num);
    }

}
