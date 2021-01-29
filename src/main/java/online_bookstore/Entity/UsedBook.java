package online_bookstore.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
@Entity
@AllArgsConstructor
public class UsedBook {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String book_Id;
	private int price;
	private int inStatus;
	private int outStatus;

	@Builder
	public UsedBook(String book_Id, int price, int inStatus, int outStatus) {
		this.book_Id = book_Id;
		this.price = price;
		this.inStatus = inStatus;
		this.outStatus = outStatus;
	}
}
