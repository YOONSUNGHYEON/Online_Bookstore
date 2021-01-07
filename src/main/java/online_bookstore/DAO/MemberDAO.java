package online_bookstore.DAO;

import online_bookstore.DTO.MemberDTO;

import java.util.List;

public interface MemberDAO  {

    public void join(MemberDTO memberDTO);

    List<MemberDTO> login(MemberDTO memberDTO);

}
