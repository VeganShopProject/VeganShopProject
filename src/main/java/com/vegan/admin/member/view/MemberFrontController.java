package com.vegan.admin.member.view;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.vegan.admin.member.repository.MemberVO;
import com.vegan.admin.member.repository.ZipcodeVO;
import com.vegan.admin.member.service.MemberService;

@Controller
@SessionAttributes("member")
public class MemberFrontController { //회원 관리

	@Autowired
	private MemberService memberService;

	//사용자(관리자/회원) 로그인 체크
	@RequestMapping(value = "/memberLogin.me", method = RequestMethod.POST)
	public String memberCheck(MemberVO vo, Model model, HttpSession session) {
		MemberVO member = new MemberVO();
		member = memberService.memberCheck(vo);
		model.addAttribute("member", member);

		
		if((member.getId()).equals("admin")) { //관리자인 경우
			System.out.println("회원목록 조회 처리");
			return "redirect:adminPage/adminMain.jsp";
		}else { //회원인 경우
			System.out.println("메인 페이지 조회 처리");

			return "./loginPage/main.jsp";
		
		}
	}
	
	@RequestMapping(value = "/filterQaaLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageQaa(MemberVO vo, Model model) {
		
		MemberVO member = new MemberVO();
		member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		
		return "./getBoardList.qa";

	}
	
	@RequestMapping(value = "/filterBasketLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageBasket(MemberVO vo, Model model, HttpSession session) {
		System.out.println("fitlerLogin");
		MemberVO member = new MemberVO();
		member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());
		
		
		return "./basketList.do";

	}
	
	
	@RequestMapping(value = "/filterAddBasketLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageAddBasket(MemberVO vo, Model model, HttpSession session) {
		System.out.println("fitlerLogin");
		MemberVO member = new MemberVO();
		member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());
		session.setAttribute("pw", member.getPw()); //이전 로그인, 직전 로그인 판별용.
	
		
		
		return "./addBasket.do";

	}
	
	@RequestMapping(value = "/filterOrderLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageOrder(MemberVO vo, Model model, HttpSession session) {
		
		MemberVO member = new MemberVO();
		member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());
		
		
		return "./orderList.od";

	}
	
	@RequestMapping(value = "/filterOrderOnlyThisLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageOrderOnlyThis(MemberVO vo, Model model, HttpSession session) {
		
		MemberVO member = new MemberVO();
		member = memberService.memberCheck(vo);
		System.out.println("1");
		model.addAttribute("member", member);
		System.out.println("2");
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());
		session.setAttribute("pw", member.getPw()); //이전 로그인, 직전 로그인 판별용.
		
		
		return "./prepareOrderOnly.od";

	}
	
	
	//로그아웃 처리
	@RequestMapping("/memberLogout.me")
	public String memberLogout(MemberVO vo, Model model, HttpSession session) {
		System.out.println("로그아웃 처리");
		session.removeAttribute("member");
		return "redirect:loginPage/login.jsp";
	}

	//아이디 중복확인
	@RequestMapping("/idCheck.me") 
	public String idCheck(MemberVO vo, Model model) throws IOException {
		System.out.println("아이디 중복확인 처리");
		Integer check = memberService.idCheck(vo); 
		
		model.addAttribute("db_id", check);
		return "./loginPage/memberIdCheck.jsp";
	}
	
	//회원 정보(아이디,비밀번호) 찾기
	@RequestMapping(value = "/memberFind.me", method = RequestMethod.POST)
	public String findMember(MemberVO vo, Model model) {
		System.out.println("회원 정보 찾기 처리");
		model.addAttribute("member", memberService.findMember(vo));
		return "./loginPage/memberFindOk.jsp"; //검색 완료 페이지 이동
	}
	
	//우편번호 검색
	@RequestMapping(value = "/searchZipcode.me", method = RequestMethod.POST) 
	public String searchZipcode(ZipcodeVO vo, Model model) throws IOException {
		System.out.println("우편번호 검색 처리");
		System.out.println(model.addAttribute("zipcodeList", memberService.searchZipcode(vo)));
		return "loginPage/memberZipcode.jsp"; //우편번호 검색 페이지 이동
	}
	
	//회원 가입
	@RequestMapping("/insertMember.me") 
	public String insertMember(MemberVO vo) throws IOException {
		System.out.println("회원 가입 처리");
		memberService.insertMember(vo);
		return "/memberLogin.me"; //로그인 처리
	}
	
	//목록 검색용 데이터
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<>();
		conditionMap.put("아이디", "ID");
		conditionMap.put("이름", "NAME");
		return conditionMap;
	}
	
	//회원 목록 보기(관리자)
	@RequestMapping("/memberList.ad") 
	public String getBoardList(MemberVO vo, Model model) { 
		//검색
		if(vo.getSearchCondition() == null) { 
			vo.setSearchCondition("ID");  
		}
		if(vo.getSearchKeyword() == null) { 
			vo.setSearchKeyword(""); 
		}
		model.addAttribute("memberList", memberService.getMemberList(vo)); 
		return "adminPage/memberList.jsp"; //회원 목록 페이지 이동
	}
	
	//회원 정보 상세 조회
	@RequestMapping("/getMember.me") 
	public String getMember(MemberVO vo, Model model) {
		System.out.println("회원 정보 상세 조회 처리");
		model.addAttribute("member",memberService.getMember(vo));
		return "redirect:myPage/memberPage.jsp"; //마이페이지 이동
	}
	
	//회원 정보 수정
	@RequestMapping("/updateMember.me") 
	public String updateMember(@ModelAttribute("member") MemberVO vo) {
		System.out.println("회원 정보 수정 처리");
		memberService.updateMember(vo);
		return "redirect:myPage/memberModify.jsp"; //회원정보 수정 페이지 이동
	}
	
	//회원 정보 삭제
	@RequestMapping("/deleteMember.me") 
	public String deleteMember(MemberVO vo) {
		System.out.println("회원 정보 삭제 처리");
		memberService.deleteMember(vo);
		return "redirect:index.jsp"; //메인페이지 이동
	}
}
