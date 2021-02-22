package online_bookstore.DTO;

import lombok.Data;

import java.util.ArrayList;

@Data
public class MyReviewDTO {
    private  Long count;
    private ArrayList<ReviewDTO> reviewDTO;

    public MyReviewDTO() {
    }

    public MyReviewDTO(Long count, ArrayList<ReviewDTO> reviewDTO) {
        this.count = count;
        this.reviewDTO = reviewDTO;
    }
}
