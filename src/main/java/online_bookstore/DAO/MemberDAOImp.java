package online_bookstore.DAO;

import online_bookstore.DTO.MemberDTO;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;

@Repository
public class MemberDAOImp implements MemberDAO{
    @PersistenceContext
    private final EntityManager em;

    public MemberDAOImp(EntityManager em){
        this.em=em;
    }

    @Override
    public void Join(MemberDTO memberDTO) {
        em.persist(memberDTO);
    }

    @Override
    public List<MemberDTO> Login(MemberDTO memberDTO) {
        List<MemberDTO> result = em.createQuery("select m from MemberDTO m where m.Member_Id = :Id and m.Member_Pass = :Pass", MemberDTO.class)
                .setParameter("Id",memberDTO.getMember_Id())
                .setParameter("Pass",memberDTO.getMember_Pass())
                .getResultList();
        return result;




    }
}
