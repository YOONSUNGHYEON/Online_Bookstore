package online_bookstore.controller;

import java.util.List;
import java.util.Optional;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import online_bookstore.Repository.category.Category;
import online_bookstore.Service.BookInfoService;
import online_bookstore.Service.CategoryService;

@RequiredArgsConstructor
@Controller
@RequestMapping("/category")
public class CategoryController {

	private final BookInfoService bookInfoService;
	private final CategoryService categoryService;
	
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("novel", categoryService.findSubCategoryByid(Long.valueOf(1)));
		model.addAttribute("economy", categoryService.findSubCategoryByid(Long.valueOf(170)));
		model.addAttribute("computer", categoryService.findSubCategoryByid(Long.valueOf(351)));
		model.addAttribute("science", categoryService.findSubCategoryByid(Long.valueOf(987)));
		model.addAttribute("domestic", categoryService.findSubCategoryByid(Long.valueOf(1230)));
		model.addAttribute("religion", categoryService.findSubCategoryByid(Long.valueOf(1237)));
		model.addAttribute("cartoon", categoryService.findSubCategoryByid(Long.valueOf(2551)));
		model.addAttribute("law", categoryService.findSubCategoryByid(Long.valueOf(798)));
		model.addAttribute("health", categoryService.findSubCategoryByid(Long.valueOf(55890)));
		return "/category/list";
	}
	
	@GetMapping("/{id}&page={page}")
	public String bookList(@PathVariable int id, @PathVariable int page, Model model) {
		model.addAttribute("books", bookInfoService.categoryBookList(id, page));
		model.addAttribute("category", categoryService.findById(Long.valueOf(id)));
		model.addAttribute("categoryList", categoryService.findBigCategory());
		model.addAttribute("subCategory", categoryService.findSubCategoryByid(Long.valueOf(id)));
		model.addAttribute("page", page);
		List<Category> sub = categoryService.findParCategoryByid(Long.valueOf(id));
		model.addAttribute("sub", sub);
		return "/category/book";
	}
}
