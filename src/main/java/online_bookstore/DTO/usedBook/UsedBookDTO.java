package online_bookstore.DTO.usedBook;

import lombok.Getter;
import online_bookstore.Entity.UsedBook;

@Getter
public class UsedBookDTO {
	private Long id;
	private String book_Id;
	private int price;
	private int inStatus;
	private int outStatus;
	
	public UsedBookDTO(UsedBook entity) {
		this.id=entity.getId();
		this.book_Id=entity.getBook_Id();
		this.price=entity.getPrice();
		this.inStatus=entity.getInStatus();
		this.outStatus=entity.getOutStatus();
	}
}
