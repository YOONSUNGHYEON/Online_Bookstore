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
public class Review {
	  	@Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private Long id;

	    @ManyToOne
	    @JoinColumn(name= "member_num", nullable=false) //외래키
	    private Member member;


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
