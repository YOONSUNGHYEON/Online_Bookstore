package online_bookstore.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import online_bookstore.DTO.MemberDTO;
@Repository
public interface MemberRepository extends JpaRepository<MemberDTO,Integer> {
    @Query("select m from member m where m.member_Id = :#{#memberDTO.member_Id} and m.member_Pass = :#{#memberDTO.member_Pass}")
    MemberDTO findById(MemberDTO memberDTO);

    @Query("select m from member m where m.member_Id = :id")
    MemberDTO findById( @Param("id") String id);

}
