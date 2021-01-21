package online_bookstore.Service;

import online_bookstore.DTO.BookDTO;

import java.util.ArrayList;

public interface BookInfoService {
    ArrayList<BookDTO> newbooklist();
    ArrayList<BookDTO> bestbooklist();
    ArrayList<BookDTO> choicebooklist();
    ArrayList<BookDTO> categoryBookList(int id, int page);
    ArrayList<BookDTO> booksearch(String title);
}
