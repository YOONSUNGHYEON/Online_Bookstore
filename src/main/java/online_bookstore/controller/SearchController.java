package online_bookstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class SearchController {

    @RequestMapping("/search")
    public String Search() { return "search/searchPage";
    }
}
