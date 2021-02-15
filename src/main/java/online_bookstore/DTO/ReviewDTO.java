package online_bookstore.DTO;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import online_bookstore.Entity.Member;
import online_bookstore.Entity.Review;
@Data
public class ReviewDTO {


    private Long id;
    @JsonIgnore
    private Member member;

    private String bookId;

    private String book_name;

    private int score;

    private String content;

    private String time;

    private int like;

    public ReviewDTO(Review review) {
        this.id = review.getId();
        this.member = review.getMember();
        this.bookId = review.getBookId();
        this.score = review.getScore();
        this.content = review.getContent();
        this.time = review.getTime();
        this.like = review.getLike();
    }

    public ReviewDTO() {

    }
}
