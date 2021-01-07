package online_bookstore.DAO;

import online_bookstore.DTO.MemberDTO;

import java.util.List;

public interface MemberDAO  {


    public void Join(MemberDTO memberDTO);
    List<MemberDTO> Login(MemberDTO memberDTO);
}
