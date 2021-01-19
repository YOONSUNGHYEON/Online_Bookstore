package online_bookstore.DTO.category;

import lombok.Getter;
import online_bookstore.Repository.category.Category;

@Getter
public class CategoryListResponseDto {
	private Long id;
	private String name;
	private Long pid;
	
	public CategoryListResponseDto(Category entity) {
		this.id=entity.getId();
		this.name=entity.getName();
		this.pid=entity.getPid();
	}
}
