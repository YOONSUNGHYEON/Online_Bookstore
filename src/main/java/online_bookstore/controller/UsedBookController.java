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
import online_bookstore.DTO.usedBook.UsedBookInfoDTO;
import online_bookstore.DTO.usedBook.UsedBookSaveDTO;
import online_bookstore.Repository.HeartedRepository;
import online_bookstore.Service.MemberService;
import online_bookstore.Service.UsedBookService;

@RequiredArgsConstructor
@Controller
@RequestMapping("/used")
public class UsedBookController {

	private final UsedBookService usedBookService;
	private final MemberService memberService;
	private final HeartedRepository heartedRepository;

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
	public String detail(@PathVariable Long id, Model model, HttpServletRequest request, HttpSession session) {
		if(session.getAttribute("member")!=null) {
			int member_id = memberService.login(((MemberDTO) session.getAttribute("member")).getMember_Id()).getMember_Num();
			int hearted = usedBookService.isHearted(id, member_id);
			model.addAttribute("hearted", hearted);
		}
		model.addAttribute("heartCount", usedBookService.heartedCount(id));
		model.addAttribute("book", usedBookService.findById(id));
		String path = request.getSession().getServletContext().getRealPath("/") + "static\\image\\";
		model.addAttribute("imgPath", path);
		
		return "used/detail";
	}
	
	@GetMapping("/{id}/hearted")
	public String hearted(@PathVariable Long id, HttpSession session) {
		int member_id = memberService.login(((MemberDTO) session.getAttribute("member")).getMember_Id()).getMember_Num();
		usedBookService.hearted(id, member_id);
		return "redirect:/used/" + id;
	}
	
	@GetMapping("/{id}/hearted/delete")
	public String heartedDelete(@PathVariable Long id, HttpSession session) {
		int member_id = memberService.login(((MemberDTO) session.getAttribute("member")).getMember_Id()).getMember_Num();
		usedBookService.heartedDelete(id, member_id);
		return "redirect:/used/" + id;
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
	public String requestupload2(MultipartHttpServletRequest mtfRequest, HttpServletRequest request, HttpSession session) {
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		String src = mtfRequest.getParameter("src");
		System.out.println("src value : " + src);

		String path = request.getSession().getServletContext().getRealPath("/") + "static/image/";
		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);
			String safeFile = path + originFileName;
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
