package online_bookstore.Repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import online_bookstore.Entity.Member;


@Repository
public interface MemberRepository extends JpaRepository<Member,Integer> {
    @Query("select m from member m where m.member_Id = :#{#member.member_Id} and m.member_Pass = :#{#member.member_Pass}")
    Member findById(@Param("member") Member member);

    @Query("select m from member m where m.member_Id = :id")
    Member findById(@Param("id") String id);
}
