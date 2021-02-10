package online_bookstore.Entity;

import lombok.*;
import online_bookstore.DTO.MemberDTO;

import javax.persistence.*;


@Entity(name = "member")
@Table(name = "member")
@Getter
public class Member {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int member_Num;
    @Column(unique = true)
    private String member_Id;
    private String member_Name;
    private String member_Pass;
    private String member_Bir_Y;
    private String member_Bir_M;
    private String member_Bir_D;
    private String member_Gender;

    public Member(int member_Num, String member_Id, String member_Name, String member_Pass, String member_Bir_Y, String member_Bir_M, String member_Bir_D, String member_Gender) {
        this.member_Num = member_Num;
        this.member_Id = member_Id;
        this.member_Name = member_Name;
        this.member_Pass = member_Pass;
        this.member_Bir_Y = member_Bir_Y;
        this.member_Bir_M = member_Bir_M;
        this.member_Bir_D = member_Bir_D;
        this.member_Gender = member_Gender;
    }


    public Member(MemberDTO memberDTO) {

        this.member_Num = memberDTO.getMember_Num();
        this.member_Id = memberDTO.getMember_Id();
        this.member_Name = memberDTO.getMember_Name();
        this.member_Pass = memberDTO.getMember_Pass();
        this.member_Bir_Y = memberDTO.getMember_Bir_Y();
        this.member_Bir_M = memberDTO.getMember_Bir_M();
        this.member_Bir_D = memberDTO.getMember_Bir_D();
        this.member_Gender = memberDTO.getMember_Gender();

    }

    public Member() {
    }
}
