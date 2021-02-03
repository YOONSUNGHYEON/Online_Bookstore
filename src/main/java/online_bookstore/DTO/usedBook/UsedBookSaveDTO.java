package online_bookstore.DTO.usedBook;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.UsedBook;

@Getter
@Setter
@NoArgsConstructor
public class UsedBookSaveDTO {
	private String book_Id;
	private int price;
	private int inStatus;
	private int outStatus;
	@JsonIgnore
	private Member member;
	private List<String> imageUrl;
	private String description;
	
	@Builder
	public UsedBookSaveDTO(String book_Id, int price, int inStatus, int outStatus, Member member, List<String> imageUrl, String description) {
		this.book_Id = book_Id;
		this.price = price;
		this.inStatus = inStatus;
		this.outStatus = outStatus;
		this.member = member;
		this.imageUrl = imageUrl;
		this.description = description;
	}

	public UsedBook toEntity() {
		return UsedBook.builder()
				.book_Id(book_Id)
				.price(price)
				.inStatus(inStatus)
				.outStatus(outStatus)
				.member(member)
				.imageUrl(imageUrl)
				.description(description)
				.build();
	}
}
