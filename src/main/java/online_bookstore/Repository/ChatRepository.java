package online_bookstore.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import online_bookstore.Entity.Chat;

public interface ChatRepository extends JpaRepository<Chat,Long> {

	@Query(value="select * from chat where((from_id = :fromId and to_id = :toId) or (from_id = :toId and to_id = :fromId)) and id > :chatId order by chat_time", nativeQuery=true)
	List<Chat> getChatListById(@Param("fromId") String fromId, @Param("toId") String toId, @Param("chatId") Long chatId);

	@Query(value="select * from chat where((from_id = :fromId and to_id = :toId) or (from_id = :toId and to_id = :fromId)) and id > (select max(id) - :number from chat) order by chat_time", nativeQuery=true)
	List<Chat> getChatListByRecent(@Param("fromId") String fromId, @Param("toId") String toId, @Param("number") int number);
	
	@Modifying
	@Transactional
	@Query(value="insert into chat values (null, :chatContent, now(), :fromId, :toId)", nativeQuery=true)
	void submit(@Param("fromId") String fromId, @Param("toId") String toId, @Param("chatContent") String chatContent);

}
