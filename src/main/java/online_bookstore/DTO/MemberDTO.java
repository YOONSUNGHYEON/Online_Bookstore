package online_bookstore.DTO;

import lombok.*;

import javax.persistence.*;

@Data
@Entity

public class MemberDTO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int member_Num;
    private String member_Id;
    private String member_Name;
    private String member_Pass;
    private String member_Bir_Y;
    private String member_Bir_M;
    private String member_Bir_D;
    private String member_Gender;

}
