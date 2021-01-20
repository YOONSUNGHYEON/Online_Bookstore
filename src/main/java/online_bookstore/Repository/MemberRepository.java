package online_bookstore.Repository;

import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberRepository extends JpaRepository<Member,Integer> {
    @Query("select m from member m where m.member_Id = :#{#member.member_Id} and m.member_Pass = :#{#member.member_Pass}")
    Member findById(Member member);

    @Query("select m from member m where m.member_Id = :id")
    Member findById(String id);

}
