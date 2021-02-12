package online_bookstore.DTO;


import java.time.LocalDateTime;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import online_bookstore.Entity.Chat;

@Getter
@Setter
@NoArgsConstructor
public class ChatDTO {

	Long id;
	String fromId;
	String toId;
	String chatContent;
	String listType;
	LocalDateTime chatTime;
	
	public ChatDTO(Chat entity) {
		this.id=entity.getId();
		this.fromId=entity.getFromId();
		this.toId=entity.getToId();
		this.chatContent=entity.getChatContent();
		this.chatTime=entity.getChatTime();
	}
}
