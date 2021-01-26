package online_bookstore.Service;

import java.util.ArrayList;

import online_bookstore.DTO.BookDTO;

public interface BookInfoService {
    ArrayList<BookDTO> newbooklist();
    ArrayList<BookDTO> bestbooklist();
    ArrayList<BookDTO> choicebooklist();
    ArrayList<BookDTO> categoryBookList(int id, int page);
    ArrayList<BookDTO> booksearch(String title);
	BookDTO booksearchById(String id);
}
