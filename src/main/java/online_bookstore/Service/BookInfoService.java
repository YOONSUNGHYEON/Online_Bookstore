package online_bookstore.Service;

import online_bookstore.DTO.BookDTO;

import java.util.ArrayList;

public interface BookInfoService {
    ArrayList<BookDTO> booklist();
    ArrayList<BookDTO> booksearch(String title);
    ArrayList<BookDTO> booksearchbyId(String id);
}
