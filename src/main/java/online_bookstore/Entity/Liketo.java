package online_bookstore.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Data
@Entity
public class Liketo {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@ManyToOne
	@JoinColumn(name = "member_num", nullable = false) // 외래키
	private Member member;

	@ManyToOne
	@JoinColumn(name = "review_id", nullable = false)
	private Review review;


	@Column(name = "like_check")
	private int like_check;

}
