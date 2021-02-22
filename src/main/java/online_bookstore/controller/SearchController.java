package online_bookstore.controller;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.BookDTO;
import online_bookstore.Service.SearchServiceImp;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Set;

@RestController
@RequiredArgsConstructor

public class SearchController {

    final SearchServiceImp searchServiceImp;

    @GetMapping("/search/{authorOrBook}&searchTerm={searchTerm}&sortType={sortType}")
    public ArrayList<BookDTO> getSearch(@PathVariable String authorOrBook, @PathVariable String searchTerm, @PathVariable String sortType ){
        return searchServiceImp.bookSearchByTerm(authorOrBook,searchTerm,sortType);
    }

    @GetMapping("/search/{authorOrBook}&searchTerm={searchTerm}&sortType={sortType}&categoryId={categoryId}")
    public ArrayList<BookDTO> getSearchByTermAndCategory(@PathVariable String authorOrBook, @PathVariable String searchTerm, @PathVariable  String sortType,  @PathVariable String categoryId ){
        return searchServiceImp.bookSearchByTermAndCategory(authorOrBook,searchTerm,sortType,categoryId);
    }

    @GetMapping("/search/{authorOrBook}&searchTerm={searchTerm}&sortType={sortType}/category")
    public ArrayList<String> getSearchCategory(@PathVariable String authorOrBook, @PathVariable String searchTerm, @PathVariable String sortType ){
       ArrayList<BookDTO> searchResult = searchServiceImp.bookSearchByTerm(authorOrBook,searchTerm,sortType);
       return searchServiceImp.bookSearchGetCategory(searchResult);
    }


}
