package online_bookstore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import online_bookstore.DTO.ChatDTO;
import online_bookstore.DTO.MemberDTO;
import online_bookstore.Entity.Member;
import online_bookstore.Service.ChatService;
import online_bookstore.Service.MemberService;
import online_bookstore.Service.UsedBookService;

@RequiredArgsConstructor
@Controller
public class Chat1Controller {
	
	private final ChatService chatService;
	private final UsedBookService usedBookService;
	private final MemberService memberService;
	
	@PostMapping("/chatList")
	@ResponseBody
	public List<ChatDTO> list (@RequestBody ChatDTO requestDto) {
		String fromId = requestDto.getFromId();
		String toId = requestDto.getToId();
		String listType = requestDto.getListType();
		if(fromId == null || fromId.equals("")
				|| toId == null || toId.equals("")
				|| listType == null || listType.equals("")) {
			return null;
		}
		else if (listType.equals("ten")) {
			return chatService.getChatListByRecent(fromId, toId, 10);
		}
		else {
			return chatService.getChatListById(fromId, toId, listType);
		}
	}
	
	@PostMapping("/chatSubmit")
	@ResponseBody
	public void doPost(@RequestBody ChatDTO requestDto)  {
		if(requestDto.getFromId() != null && requestDto.getToId() != null && requestDto.getChatContent() != null) {
			chatService.submit(requestDto.getFromId(), requestDto.getToId(), requestDto.getChatContent());		
		}	
	}
	
	@GetMapping("/chat")
	public String chat(@RequestParam String toId, HttpServletRequest request, Model model, HttpSession session) {
		request.setAttribute("toId", toId);
		Member member1 = memberService.login(toId);
		String member2 = ((MemberDTO) session.getAttribute("member")).getMember_Id();
		if(member1 == null) model.addAttribute("userCorrect", "no");
		else model.addAttribute("userCorrect", "yes");
		return "used/chat";
	}
}
