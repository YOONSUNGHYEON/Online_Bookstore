package online_bookstore.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;
import online_bookstore.DTO.LiketoDTO;

@Data
@Entity
public class Liketo {

	public Liketo() {
		// TODO Auto-generated constructor stub

	}
	public Liketo(LiketoDTO liketoDTO) {
		// TODO Auto-generated constructor stub

		this.member = liketoDTO.getMember();
		this.review = liketoDTO.getReview();
		this.like_check = liketoDTO.getLike_check();
	}


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
