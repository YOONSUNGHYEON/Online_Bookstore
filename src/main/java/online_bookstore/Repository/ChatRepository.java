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

	@Query(value="select * from chat where((from_id = :fromId and to_id = :toId) or (from_id = :toId and to_id = :fromId)) and id > (select max(id) - :number from chat where(from_id = :fromId and to_id = :toId) or (from_id = :toId and to_id = :fromId)) order by chat_time", nativeQuery=true)
	List<Chat> getChatListByRecent(@Param("fromId") String fromId, @Param("toId") String toId, @Param("number") int number);
	
	@Query(value="select * from chat where id in (select max(id) from chat where to_id=:userId or from_id=:userId group by from_id, to_id)", nativeQuery=true)
	List<Chat> getBox(@Param("userId") String userId);
	
	@Query(value="select count(id) from chat where to_id=:userId and chat_read=0", nativeQuery=true)
	int getAllUnreadChat(@Param("userId") String userId);
	
	@Query(value="select count(id) from chat where to_id=:toId and from_id=:fromId and chat_read=0", nativeQuery=true)
	int getUnreadChat(@Param("fromId") String fromId, @Param("toId") String toId);
	
	@Modifying
	@Transactional
	@Query(value="insert into chat (chat_content, chat_time, from_id, to_id, chat_read) values (:chatContent, now(), :fromId, :toId, 0)", nativeQuery=true)
	void submit(@Param("fromId") String fromId, @Param("toId") String toId, @Param("chatContent") String chatContent);
	
	@Modifying
	@Transactional
	@Query(value="update chat set chat_read=1 where (from_id = :toId and to_id = :fromId)", nativeQuery=true)
	void readChat(@Param("fromId") String fromId, @Param("toId") String toId);

}
