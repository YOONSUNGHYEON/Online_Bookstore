package online_bookstore.Service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.ChatDTO;
import online_bookstore.Repository.ChatRepository;

@RequiredArgsConstructor
@Service
public class ChatService {
	private final ChatRepository chatRepository;
	
	public List<ChatDTO> getChatListById(String fromId, String toId, String chatId){
		return chatRepository.getChatListById(fromId, toId, Long.parseLong(chatId))
				.stream().map(ChatDTO::new)
				.collect(Collectors.toList());
	}
	
	public List<ChatDTO> getChatListByRecent(String fromId, String toId, int number){
		return chatRepository.getChatListByRecent(fromId, toId, number)
				.stream().map(ChatDTO::new)
				.collect(Collectors.toList());
	}
	
	@Transactional
	public void submit(String fromId, String toId, String chatContent){
		chatRepository.submit(fromId, toId, chatContent);
	}
	
}
