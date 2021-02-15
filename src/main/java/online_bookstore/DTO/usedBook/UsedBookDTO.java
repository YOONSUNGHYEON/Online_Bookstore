package online_bookstore.DTO.usedBook;

import java.util.List;

import lombok.Getter;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.UsedBook;

@Getter
public class UsedBookDTO {
	private Long id;
	private String book_Id;
	private String book_Title;
	private Member member;
	private int price;
	private int inStatus;
	private int outStatus;
	private int saleStatus;
	private List<String> imageUrl;
	private String description;
	
	public UsedBookDTO(UsedBook entity) {
		this.id=entity.getId();
		this.book_Id=entity.getBook_Id();
		this.book_Title=entity.getBook_Title();
		this.member=entity.getMember();
		this.price=entity.getPrice();
		this.inStatus=entity.getInStatus();
		this.outStatus=entity.getOutStatus();
		this.saleStatus=entity.getSaleStatus();
		this.imageUrl=entity.getImageUrl();
		this.description=entity.getDescription();
	}

}
