package online_bookstore.Service;

import online_bookstore.DTO.BookDTO;

import java.util.ArrayList;

public interface BookInfoService {
    ArrayList<BookDTO> newbooklist();
    ArrayList<BookDTO> bestbooklist();
    ArrayList<BookDTO> choicebooklist();

    ArrayList<BookDTO> categoryBookList(int id, int page);
   ArrayList<BookDTO> booksearch(String title, int page);
    BookDTO booksearchById1(String id);
    //ArrayList<BookDTO> booksearchById(String id);

    ArrayList<BookDTO> booklist();
  //  ArrayList<BookDTO> categoryBookList(int id);
    ArrayList<BookDTO> booksearch(String title);
    ArrayList<BookDTO> bookArraySearchById(String id);

    ArrayList<BookDTO> bookSearchbyId(String book_id);
	BookDTO booksearchById(String id);
    ArrayList<BookDTO> categoryBookList(int id, int page);
    ArrayList<BookDTO> booksearch1(String title, int page);
    BookDTO booksearchById1(String id);

}
