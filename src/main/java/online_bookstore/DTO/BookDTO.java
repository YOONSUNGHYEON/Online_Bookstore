package online_bookstore.DTO;

import javax.persistence.Id;

import lombok.Data;

@Data
public class BookDTO {
	
    @Id
    private String Book_Id;
    private String Book_Title;
    private String Book_Author;
    private String Book_Description;
    private int Book_Price;
    private String Book_Cover;
    private String Book_Publisher;
    
    public BookDTO(String book_Id, String book_Title, String book_Author, String book_Description, int book_Price, String book_Cover, String book_Publisher) {
        Book_Id = book_Id;
        Book_Title = book_Title;
        Book_Author = book_Author;
        Book_Description = book_Description;
        Book_Price = book_Price;
        Book_Cover = book_Cover;
        Book_Publisher = book_Publisher;
    }

    public BookDTO() {
    }
}
