package org.goal.rgas.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@RestController
@RequestMapping("/member")
public class MemberController {
	@Autowired 
	private HttpSession httpSession;
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@GetMapping("/form")
	public ModelAndView memberRegisterForm() {
		ModelAndView mv = new ModelAndView("/member/register");
		
		return mv;
	}
	
	@PostMapping
	public ModelAndView memberRegister(Member member) {
		try {
			memberService.memberRegister(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		ModelAndView mv = new ModelAndView(new RedirectView("/login"));
		
		return mv;
	}
	
	@GetMapping
	public ModelAndView memberList(Member member) {
		ModelAndView mv = new ModelAndView("/member/list");
		
		try {
			memberService.memberList(member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}
	
	@GetMapping("/{no}")
	public ModelAndView memberInquiry(Member member) {
		
		return null;
	}
	
	@GetMapping("/{no}/form")
	public ModelAndView memberModifyForm(Member member) {
		
		return null;
	}

	@PutMapping
	public ModelAndView memberModify(Member member) {
		
		return null;
	}
	
}