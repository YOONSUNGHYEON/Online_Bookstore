package online_bookstore.Repository.category;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@Entity
public class Category {
	
	@Id
	private Long id;
	
	@Column(length = 50, nullable = false)
	private String name;
	
	private Long pid;
	
	@Builder
	public Category(Long id, String name, Long pid) {
		this.id= id;
		this.name = name;
		this.pid = pid;
	}
	
}
