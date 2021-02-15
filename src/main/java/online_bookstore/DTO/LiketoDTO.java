package online_bookstore.DTO;

import lombok.Data;

@Data
public class LiketoDTO {
	private int id;
	private int member_num;
	private int review_id;
	private int like_check;

	  public LiketoDTO() {

	  }
}
