package online_bookstore.DTO;

import lombok.Data;
import online_bookstore.Entity.Liketo;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Review;

@Data
public class LiketoDTO {
	private long id;
	private Member member;
	private Review review;
	private int like_check;

	  public LiketoDTO() {

	  }

	public LiketoDTO(Member m, Review r, int num) {
		// TODO Auto-generated constructor stub
		this.member = m;
		this.review = r;
		this.like_check = num;
	}

	public LiketoDTO(Liketo tempLiketo) {
		this.id = tempLiketo.getId();
		this.member = tempLiketo.getMember();
		this.review = tempLiketo.getReview();
		this.like_check = tempLiketo.getLike_check();
	}
}
