package online_bookstore.Service;

import online_bookstore.DTO.BookDTO;

import java.util.ArrayList;
import java.util.Set;

public interface SearchService {

    ArrayList<BookDTO> bookSearchByTerm(String authorOrBook , String searchTerm, String sortType);
    ArrayList<BookDTO> bookSearchByTermAndCategory(String authorOrBook, String searchTerm, String sortType, String categoryId );
    ArrayList<String> bookSearchGetCategory(ArrayList<BookDTO> searchResult);
}
