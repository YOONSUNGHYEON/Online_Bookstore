package online_bookstore.controller;

import online_bookstore.DTO.BookDTO;
import online_bookstore.Service.BookInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;

@RestController
@RequestMapping("/api")
public class BookInfoController {

    @Autowired
    BookInfoService bookInfoService;

    @GetMapping("/booklist")
    public ArrayList<BookDTO> booklist(){
        ArrayList<BookDTO> arrayList=bookInfoService.booklist();
        return arrayList;
    }

}
