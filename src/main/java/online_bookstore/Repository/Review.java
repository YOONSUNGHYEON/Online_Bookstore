package online_bookstore.Repository;

import java.util.Date;

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
	    private String book_id;

	    private int review_score;
	    private String review_content;
	    private Date review_time;
	    private int review_like;
}
