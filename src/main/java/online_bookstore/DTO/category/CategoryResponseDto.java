package online_bookstore.DTO.category;

import lombok.Getter;
import online_bookstore.Repository.category.Category;

@Getter
public class CategoryResponseDto {
	private Long id;
	private String name;
	private Long pid;
	
	public CategoryResponseDto(Category entity) {
		this.id=entity.getId();
		this.name=entity.getName();
		this.pid=entity.getPid();
	}
}
