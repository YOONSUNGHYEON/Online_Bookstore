package online_bookstore.DTO.usedBook;

import java.util.List;

import lombok.Getter;
import online_bookstore.Entity.UsedBook;

@Getter
public class UsedBookDTO {
	private Long id;
	private String book_Id;
	private int price;
	private int inStatus;
	private int outStatus;
	private List<String> imageUrl;
	private String description;
	
	public UsedBookDTO(UsedBook entity) {
		this.id=entity.getId();
		this.book_Id=entity.getBook_Id();
		this.price=entity.getPrice();
		this.inStatus=entity.getInStatus();
		this.outStatus=entity.getOutStatus();
		this.imageUrl=entity.getImageUrl();
		this.description=entity.getDescription();
	}
}
