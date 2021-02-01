package online_bookstore.Service;

import online_bookstore.DTO.BookDTO;

import java.util.ArrayList;

public interface BookInfoService {
    ArrayList<BookDTO> newbooklist();
    ArrayList<BookDTO> bestbooklist();
    ArrayList<BookDTO> choicebooklist();
    ArrayList<BookDTO> categoryBookList(int id, int page);
    ArrayList<BookDTO> booklist();
  //  ArrayList<BookDTO> categoryBookList(int id);
    ArrayList<BookDTO> booksearch(String title);
    ArrayList<BookDTO> booksearchbyId(String id);
	BookDTO booksearchById(String id);
}
