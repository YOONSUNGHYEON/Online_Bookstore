package online_bookstore.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
@Entity
public class Hearted {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private Long book_id;
	private int member_id;
	
	public Hearted(Long book_id, int member_id) {
		this.book_id=book_id;
		this.member_id=member_id;
	}
}
