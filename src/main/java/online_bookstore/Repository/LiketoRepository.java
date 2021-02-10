package online_bookstore.Repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import online_bookstore.Entity.Liketo;

@Repository
public interface LiketoRepository extends JpaRepository<Liketo,Long>{


    @Query(value = "select * from liketo where member_num=:member_Num and review_id = :review_id", nativeQuery = true)
	Liketo findByMemberNumandReviewID(@Param("member_Num") int member_Num,@Param("review_id") Long review_id);

    @Transactional
	@Modifying
	@Query("UPDATE Liketo SET like_check=:like_check WHERE id=:id")
	void updateLikeCheck(@Param("id") long id, @Param("like_check") int like_check);

    @Query(value = "select count(*) from liketo where like_check=1 and review_id = :review_id", nativeQuery = true)
    int countByReviewIdandLikeCheck(@Param("review_id") long review_id);


}
