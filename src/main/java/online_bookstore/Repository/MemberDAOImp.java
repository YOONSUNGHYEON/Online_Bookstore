package online_bookstore.Repository;

import online_bookstore.DTO.MemberDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class MemberDAOImp implements MemberDAO{
    @PersistenceContext
    private final EntityManager em;

    public MemberDAOImp(EntityManager em){
        this.em=em;
    }

    @Override
    public void join(MemberDTO memberDTO) {
        em.persist(memberDTO);
    }

    @Override
    public MemberDTO getMemberDTObyMemberNum(int member_num){
       MemberDTO memberdto = em.createQuery("select m from MemberDTO m where m.member_Num = :num",MemberDTO.class)
                .setParameter("num",member_num)
                .getSingleResult();
        return memberdto;
  }
    @Override
    public List<MemberDTO> login(MemberDTO memberDTO) {
        List<MemberDTO> result = em.createQuery("select m from MemberDTO m where m.member_Id = :Id and m.member_Pass = :Pass", MemberDTO.class)
                .setParameter("Id",memberDTO.getMember_Id())
                .setParameter("Pass",memberDTO.getMember_Pass())
                .getResultList();
        return result;
 }

}
