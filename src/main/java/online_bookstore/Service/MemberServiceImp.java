package online_bookstore.Service;

import online_bookstore.Repository.MemberDAO;
import online_bookstore.DTO.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class MemberServiceImp implements MemberService{

    @Autowired
    MemberDAO memberDAO;

    @Override
    public void join(MemberDTO memberDTO) {
        memberDAO.join(memberDTO);
    }

    @Override
    public List<MemberDTO> login(MemberDTO memberDTO) {
        return  memberDAO.login(memberDTO);
    }
}
