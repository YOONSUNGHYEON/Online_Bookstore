package online_bookstore.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.DTO.usedBook.UsedBookDTO;
import online_bookstore.DTO.usedBook.UsedBookInfoDTO;
import online_bookstore.DTO.usedBook.UsedBookSaveDTO;
import online_bookstore.Service.MemberService;
import online_bookstore.Service.UsedBookService;

@RequiredArgsConstructor
@Controller
@RequestMapping("/used")
public class UsedBookController {

	private final UsedBookService usedBookService;
	private final MemberService memberService;

	@GetMapping("")
	public String used(Model model) {
		model.addAttribute("books", usedBookService.findAll());
		return "used/main";
	}

	@GetMapping("/insert")
	public String insert() {
		return "used/insert";
	}
	
	@GetMapping("/{id}")
	public String detail(@PathVariable Long id, Model model) {
		model.addAttribute("book", usedBookService.findById(id));
		return "used/detail";
	}
	
	@GetMapping("api/all")
	@ResponseBody
	public List<UsedBookInfoDTO> findAll() {
		return usedBookService.findAll();
	}
	
	@GetMapping("api/{id}")
	@ResponseBody
	public UsedBookInfoDTO findById(@PathVariable Long id) {
		return usedBookService.findById(id);
	}
	
	@ResponseBody
	@PostMapping("")
	public Long save(@RequestBody UsedBookSaveDTO usedBookSaveDTO, HttpSession session) {
		usedBookSaveDTO.setMember(memberService.login(((MemberDTO) session.getAttribute("member")).getMember_Id()));
		return usedBookService.save(usedBookSaveDTO);
	}

	@RequestMapping(value = "requestupload2")
	public String requestupload2(MultipartHttpServletRequest mtfRequest, HttpServletRequest request) {
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		String src = mtfRequest.getParameter("src");
		System.out.println("src value : " + src);

		String path = request.getSession().getServletContext().getRealPath("/") + "static/image/";
		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);

			String safeFile = path + System.currentTimeMillis() + originFileName;
			try {
				mf.transferTo(new File(safeFile));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/used";
	}

}
