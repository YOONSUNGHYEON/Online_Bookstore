package online_bookstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/")
	public String main() {
		return "main";
	}

	@RequestMapping("/detail")
	public String detail() {
		return "detail";
	}


}
