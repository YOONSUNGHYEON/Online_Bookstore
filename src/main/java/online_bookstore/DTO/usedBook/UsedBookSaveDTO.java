package online_bookstore.DTO.usedBook;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import online_bookstore.Entity.UsedBook;

@Getter
@NoArgsConstructor
public class UsedBookSaveDTO {
	private String book_Id;
	private int price;
	private int inStatus;
	private int outStatus;
	
	@Builder
	public UsedBookSaveDTO(String book_Id, int price, int inStatus, int outStatus) {
		this.book_Id=book_Id;
		this.price=price;
		this.inStatus=inStatus;
		this.outStatus=outStatus;
	}
	
	public UsedBook toEntity() {
		return UsedBook.builder()
				.book_Id(book_Id)
				.price(price)
				.inStatus(inStatus)
				.outStatus(outStatus)
				.build();
	}
}
