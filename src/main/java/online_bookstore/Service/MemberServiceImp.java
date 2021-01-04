package online_bookstore.Service;

import online_bookstore.DAO.MemberDAO;
import online_bookstore.DTO.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class MemberServiceImp implements MemberService{

    @Autowired
    MemberDAO memberDAO;

    @Override
    public void Join(MemberDTO memberDTO) {
        memberDAO.Join(memberDTO);
    }

    @Override
    public List<MemberDTO> Login(MemberDTO memberDTO) {
        return  memberDAO.Login(memberDTO);
    }
}
