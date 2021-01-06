package online_bookstore.DTO;

import lombok.*;

import javax.persistence.*;

@Data
@Entity
@Table(name = "Member")
public class MemberDTO {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Member_Num;
    private String Member_Id;
    private String Member_Name;
    private String Member_Pass;
    private String Member_Bir_Y;
    private String Member_Bir_M;
    private String Member_Bir_D;
    private String Member_Gender;

}
