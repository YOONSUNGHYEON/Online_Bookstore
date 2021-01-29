package online_bookstore.DTO.usedBook;

import lombok.Getter;
import online_bookstore.DTO.BookDTO;

@Getter
public class UsedBookInfoDTO {
	private String book_Id;
	private int salePrice;
	private int inStatus;
	private int outStatus;
	private String cover;
	private String title;
	private String author;
	private String publisher;
	private int price;
	
	public UsedBookInfoDTO(UsedBookDTO usedbook, BookDTO book) {
		this.book_Id=usedbook.getBook_Id();
		this.salePrice=usedbook.getPrice();
		this.inStatus=usedbook.getInStatus();
		this.outStatus=usedbook.getOutStatus();
		this.cover=book.getBook_Cover();
		this.title=book.getBook_Title();
		this.author=book.getBook_Author();
		this.publisher=book.getBook_Publisher();
		this.price=book.getBook_Price();
    }
}
