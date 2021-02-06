package online_bookstore.DTO;

import lombok.Getter;
import online_bookstore.Entity.Hearted;

@Getter
public class HeartedDTO {
	private Long book_id;
	private int member_id;
	
	public HeartedDTO(Long id, int member_id) {
		this.book_id=id;
		this.member_id=member_id;
	}
	public Hearted toEntity() {
		return new Hearted(book_id, member_id);
	}
}
