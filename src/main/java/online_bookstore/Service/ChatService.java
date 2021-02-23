package online_bookstore.Service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.ChatBoxDTO;
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
	
	public List<ChatBoxDTO> getBox(String userId){
		List<ChatBoxDTO> list = chatRepository.getBox(userId)
				.stream().map(ChatBoxDTO::new)
				.collect(Collectors.toList());
		for(int i=0; i<list.size(); i++) {
			ChatBoxDTO x = list.get(i);
			for(int j=0; j<list.size(); j++) {
				ChatBoxDTO y = list.get(j);
				if(x.getFromId().equals(y.getToId()) && x.getToId().equals(y.getFromId())) {
					if(x.getId() < y.getId()) {
						list.remove(x);
						i--;
						break;
					}
					else {
						list.remove(y);
						j--;
					}
				}
			}
			if(userId.equals(x.getToId())) {
				x.setUnread(chatRepository.getUnreadChat(x.getFromId(), userId));
			}
		}
		return list;
	}
	
	public int getAllUnreadChat(String userId){
		return chatRepository.getAllUnreadChat(userId);
	}
	@Transactional
	public void submit(String fromId, String toId, String chatContent){
		chatRepository.submit(fromId, toId, chatContent);
	}
	@Transactional
	public void readChat(String fromId, String toId){
		chatRepository.readChat(fromId, toId);
	}
}
