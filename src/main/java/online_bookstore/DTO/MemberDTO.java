package online_bookstore.DTO;

import lombok.Data;

@Data
public class MemberDTO {
    private int member_Num;
    private String member_Id;
    private String member_Name;
    private String member_Pass;
    private String member_Bir_Y;
    private String member_Bir_M;
    private String member_Bir_D;
    private String member_Gender;
    private String book_Id;

    public MemberDTO(int member_Num, String member_Id, String member_Name, String member_Pass, String member_Bir_Y, String member_Bir_M, String member_Bir_D, String member_Gender) {
        this.member_Num = member_Num;
        this.member_Id = member_Id;
        this.member_Name = member_Name;
        this.member_Pass = member_Pass;
        this.member_Bir_Y = member_Bir_Y;
        this.member_Bir_M = member_Bir_M;
        this.member_Bir_D = member_Bir_D;
        this.member_Gender = member_Gender;
    }

    public MemberDTO() { }
}
