package online_bookstore.Repository;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;
import online_bookstore.DTO.MemberDTO;


@Data
@Entity
public class Review {
	  	@Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private Long id;

	    @ManyToOne
	    @JoinColumn(name= "member_id", nullable=false) //외래키
	    private MemberDTO member;


		@Column(name = "book_id")
	    private String bookId;

		@Column(name = "review_score")
	    private int score;

		@Column(name = "review_content")
	    private String content;

		@Column(name = "review_time")
	    private String time;

		@Column(name = "review_like")
	    private int like;


}
