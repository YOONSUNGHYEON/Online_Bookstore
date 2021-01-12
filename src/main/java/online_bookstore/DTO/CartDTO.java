package online_bookstore.DTO;

import lombok.Getter;
import org.json.simple.JSONObject;

@Getter
public class CartDTO {
    private String title;
    private String author;
    private String price;
    private String image;
    private int memberId;
    private long bookId;




}
