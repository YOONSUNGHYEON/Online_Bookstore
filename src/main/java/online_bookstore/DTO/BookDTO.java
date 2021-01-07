package online_bookstore.DTO;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@Entity
public class BookDTO {
    @Id
    private Long book_Id;
    private String book_Title;
    private String book_Author;
    private String book_Description;
    private int book_Price;
    private String book_Cover;
    private String book_Publisher;


    public BookDTO(Long book_Id, String book_Title, String book_Author, String book_Description, int book_Price, String book_Cover, String book_Publisher) {
        this.book_Id = book_Id;
        this.book_Title = book_Title;
        this.book_Author = book_Author;
        this.book_Description = book_Description;
        this.book_Price = book_Price;
        this.book_Cover = book_Cover;
        this.book_Publisher = book_Publisher;
    }

    public BookDTO() {
    }
}
