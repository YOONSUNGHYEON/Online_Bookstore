package online_bookstore.Repository;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import java.util.List;



public class Member implements MemberRepository{

    @Id
    private int member_Num;
    private String member_Id;
    private String member_Name;
    private String member_Pass;
    private String member_Bir_Y;
    private String member_Bir_M;
    private String member_Bir_D;
    private String member_Gender;

    @PersistenceContext
    private final EntityManager em;

    public MemberDAOImp(EntityManager em){
        this.em=em;
    }

    @Override
    public void join(MemberDTO memberDTO) {
        em.persist(memberDTO);
    }
    public List<MemberDTO> login(MemberDTO memberDTO) {
        List<MemberDTO> result = em.createQuery("select m from MemberDTO m where m.Member_Id = :Id and m.Member_Pass = :Pass", MemberDTO.class)
                .setParameter("Id",memberDTO.getMember_Id())
                .setParameter("Pass",memberDTO.getMember_Pass())
                .getResultList();
        return result;




    }
}
