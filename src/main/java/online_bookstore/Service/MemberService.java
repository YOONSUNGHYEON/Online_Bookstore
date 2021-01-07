package online_bookstore.Service;


import online_bookstore.DTO.MemberDTO;

import java.util.List;
import java.util.Optional;

public interface MemberService {

    void join(MemberDTO memberDTO);

    List<MemberDTO> login(MemberDTO memberDTO);
}
