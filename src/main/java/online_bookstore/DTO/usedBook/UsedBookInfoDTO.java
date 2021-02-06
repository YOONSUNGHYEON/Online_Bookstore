package online_bookstore.DTO.usedBook;

import java.util.List;

import lombok.Getter;
import online_bookstore.DTO.BookDTO;

@Getter
public class UsedBookInfoDTO {
	private Long id;
	private String book_Id;
	private int salePrice;
	private int inStatus;
	private int outStatus;
	private String cover;
	private String title;
	private String author;
	private String publisher;
	private int price;
	private List<String> imageUrl;
	private String description;
	
	public UsedBookInfoDTO(UsedBookDTO usedbook, BookDTO book) {
		this.id=usedbook.getId();
		this.book_Id=usedbook.getBook_Id();
		this.salePrice=usedbook.getPrice();
		this.description=usedbook.getDescription();
		this.inStatus=usedbook.getInStatus();
		this.outStatus=usedbook.getOutStatus();
		this.imageUrl=usedbook.getImageUrl();
		this.cover=book.getBook_Cover();
		this.title=book.getBook_Title();
		this.author=book.getBook_Author();
		this.publisher=book.getBook_Publisher();
		this.price=book.getBook_Price();
    }
}
