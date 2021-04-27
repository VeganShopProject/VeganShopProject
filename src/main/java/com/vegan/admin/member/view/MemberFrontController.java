package com.vegan.admin.member.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
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
	public String memberCheck(MemberVO vo, Model model, HttpSession session, HttpServletResponse response) throws IOException {
		MemberVO member = memberService.memberCheck(vo);
		
		
	
		if(member != null) { //db에 데이터가 있는 경우
			
			model.addAttribute("member", member);
			
			session.setAttribute("member", member);
			session.setAttribute("seq", member.getSeq());
			session.setAttribute("id", member.getId());
			
			//관리자인 경우
			if((vo.getId()).equals("admin")) { 
				System.out.println("회원목록 조회 처리");
				return "adminPage/adminMain.jsp"; //회원관리(관리자) 페이지 이동
			}
			//회원인 경우
			else if(vo.getPw().equals(member.getPw())) { //비밀번호가 일치하는 경우
				System.out.println("로그인 처리");
				return "main/main.jsp"; //회원 페이지 이동
				
			}else if(!vo.getPw().equals(member.getPw())){ //비밀번호가 불일치하는 경우
				System.out.println("비밀번호 불일치");
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>"); 
				out.println("alert('아이디와 비밀번호를 확인하세요');");
				out.println("history.go(-1);");
				out.println("</script>"); 
				out.flush();
//				return "redirect:loginPage/login.jsp";
				return "";
			}
		}else { //db에 데이터가 없는 경우
			System.out.println("데이터없음");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디와 비밀번호를 확인하세요');");
//			out.println("history.go(-1);");
			out.println("</script>");
			out.flush();
			return "loginPage/login.jsp";
		}
		
		
		return "redirect:loginPage/login.jsp";
		
//		if((vo.getId()).equals("admin")) { //관리자인 경우
//			System.out.println("관리자 로그인");
//			return "adminPage/adminMain.jsp"; //회원관리(관리자) 페이지 이동
//		}else { //회원인 경우
//			System.out.println("로그인 처리");
//			
//			return "main/main.jsp"; //회원 페이지 이동
//		}
	}
	
	@RequestMapping(value = "/filterQaaLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageQaa(MemberVO vo, Model model, HttpSession session) {
		
		MemberVO member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());

	
		
		return "./getBoardList.qa";

	}
	
	@RequestMapping(value = "/filterBasketLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageBasket(MemberVO vo, Model model, HttpSession session) {
		
		MemberVO member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());

		
		
		return "./basketList.do";

	}
	
	
	@RequestMapping(value = "/filterAddBasketLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageAddBasket(MemberVO vo, Model model, HttpSession session) {
		MemberVO member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());
		session.setAttribute("pw", member.getPw()); //이전 로그인, 직전 로그인 판별용.
		session.setAttribute("test", 1);	
	
		
		
		return "./addBasket.do";

	}
	
	@RequestMapping(value = "/filterOrderLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageOrder(MemberVO vo, Model model, HttpSession session) {
		MemberVO member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());	
		System.out.println("1");

		
		return "./orderList.od";

	}
	
	@RequestMapping(value = "/filterOrderOnlyThisLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageOrderOnlyThis(MemberVO vo, Model model, HttpSession session) {
		MemberVO member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());
		session.setAttribute("pw", member.getPw()); //이전 로그인, 직전 로그인 판별용.
		session.setAttribute("test", 1);	
		return "./prepareOrderOnly.od";

	}
	
	@RequestMapping(value = "/filterMemberPageLogin.me", method = RequestMethod.POST)
	public String goBackPreviousPageMemberPageThis(MemberVO vo, Model model, HttpSession session) {
		MemberVO member = memberService.memberCheck(vo);
		model.addAttribute("member", member);
		session.setAttribute("seq", member.getSeq());
		session.setAttribute("id", member.getId());	

			
		return "./getMyPage.me";

	}
	
	//추가
	@RequestMapping(value = "/getMyPage.me", method = RequestMethod.POST)
	public String getMemberPage(MemberVO vo, Model model, HttpSession session) {
				
		return "/myPage/memberPage.jsp";

	}
	
	@RequestMapping(value = "/getMyPage.me", method = RequestMethod.GET)
	public String getMemberPageNeedLogin(MemberVO vo, Model model, HttpSession session) {
		
		return "/myPage/memberPageLogin.jsp";

	}
	
	
	//로그아웃 처리
		@RequestMapping(value = "/memberLogout.me")
		public String memberLogout(MemberVO vo, Model model, HttpSession session) {
			System.out.println("로그아웃 처리");
			session.removeAttribute("member");
			session.removeAttribute("id");
			session.removeAttribute("seq");
			session.removeAttribute("pw");
			session.removeAttribute("test");
			
			model.addAttribute("member", null);
			return "redirect:main/main.jsp";
		}

	//아이디 중복확인
		@RequestMapping("/idCheck.me") 
		public String idCheck(MemberVO vo, Model model, HttpServletResponse response) throws IOException {
			System.out.println("아이디 중복확인 처리");
			Integer check = memberService.idCheck(vo);  //같은 id의 개수를 return
			response.setContentType("text/html; charset=UTF-8");
			
			if(vo.getId().equals("")) { //입력하지 않은 경우
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('아이디를 입력하세요')");
				out.println("history.go(-1)");
				out.println("</script>");
				out.flush();
			}else if(check == 1) { //이미 존재하는 아이디인 경우
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('이미 등록된 아이디입니다')");
				out.println("history.go(-1)");
				out.println("</script>");
				out.flush();
			}else { //아이디가 존재하지 않는 경우
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('사용이 가능합니다')");
				out.println("history.go(-1)");
				out.println("</script>");
				out.flush();
			}
			return "./loginPage/memberIdCheck.jsp";
		}
	
	//계정 비밀번호 체크
	@RequestMapping("/pwCheck.me")
	public String pwCheck(MemberVO vo, Model model) {
			memberService.memberCheck(vo);
			return "/myPage/memberUpdate.jsp";
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
		return "redirect:loginPage/login.jsp"; //로그인 처리
	}
	
	//목록 검색용 데이터
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<>();
		conditionMap.put("아이디", "ID");
		conditionMap.put("이름", "NAME");
		return conditionMap;
	}
	
	//마이페이지
	@RequestMapping("/myPage.me")
	public String myPage(Model model) {
		model.getAttribute("member"); //member의 name값 가져오기 위해
		return "myPage/memberPage.jsp";
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
	@RequestMapping(value = "/updateMember.me", method = RequestMethod.POST) 
	public String updateMember(@ModelAttribute("member") MemberVO vo) {
		System.out.println("회원 정보 수정 처리");
		memberService.updateMember(vo);
		return "redirect:myPage/memberPage.jsp"; //마이페이지(메인) 이동
	}
	
	//회원 정보 탈퇴
	@RequestMapping("/deleteMember.me") 
	public String deleteMember(MemberVO vo) {
		System.out.println("회원 정보 탈퇴 처리");
		memberService.deleteMember(vo);
		return "redirect:main/main.jsp"; //메인페이지 이동
	}
}
