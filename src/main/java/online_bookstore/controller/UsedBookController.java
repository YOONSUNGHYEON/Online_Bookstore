package online_bookstore.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.usedBook.UsedBookInfoDTO;
import online_bookstore.DTO.usedBook.UsedBookSaveDTO;
import online_bookstore.Service.UsedBookService;

@RequiredArgsConstructor
@Controller
@RequestMapping("/used")
public class UsedBookController {
	
	private final UsedBookService usedBookService;
	
	@GetMapping("")
	public String used(Model model) {		
		model.addAttribute("books", usedBookService.findAll());
		return "used/main";
	}
	
	@GetMapping("/insert")
	public String insert() {
		return "used/insert";
	}
	
	@GetMapping("/all")
	@ResponseBody
	public List<UsedBookInfoDTO> findAll() {
		return usedBookService.findAll();
	}
	
	@ResponseBody
	@PostMapping("")
	public Long save(@RequestBody UsedBookSaveDTO usedBookSaveDTO) {
		return usedBookService.save(usedBookSaveDTO);
	}
	
}
