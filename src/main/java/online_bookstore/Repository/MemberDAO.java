package online_bookstore.Repository;

import online_bookstore.DTO.MemberDTO;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface MemberRepository extends JpaRepository <Member,Long>{

    public void join(MemberDTO memberDTO);

    List<MemberDTO> login(MemberDTO memberDTO);

}
