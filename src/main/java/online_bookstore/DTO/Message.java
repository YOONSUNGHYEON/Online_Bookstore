package online_bookstore.DTO;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@Data
public class Message {
    @Id
    private String message;
}
