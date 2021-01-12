package online_bookstore.Repository;

import online_bookstore.DTO.MemberDTO;

import java.util.List;

public interface MemberDAO  {

    void join(MemberDTO memberDTO);
    MemberDTO getMemberDTObyMemberNum(int member_num);
    List<MemberDTO> login(MemberDTO memberDTO);

}
