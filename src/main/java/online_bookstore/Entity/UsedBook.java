package online_bookstore.Entity;

import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

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
	private String book_Title;
	private int price;
	private int inStatus;
	private int outStatus;

	@ManyToOne
	@JoinColumn(name = "member_num", nullable = false)
	private Member member;

	@ElementCollection
	@CollectionTable(name = "imageUrls", joinColumns = @JoinColumn(name = "usedBook_id"))
	private List<String> imageUrl;
	private String description;

	@Builder
	public UsedBook(String book_Id, String book_Title, int price, int inStatus, int outStatus, Member member,
			List<String> imageUrl, String description) {
		this.book_Id = book_Id;
		this.book_Title = book_Title;
		this.price = price;
		this.inStatus = inStatus;
		this.outStatus = outStatus;
		this.member = member;
		this.imageUrl = imageUrl;
		this.description = description;
	}

}
