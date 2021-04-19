package com.vegan.admin.faq.view;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.vegan.admin.faq.biz.AdminFaqBoardService;
import com.vegan.admin.faq.biz.AdminFaqBoardVO;


@Controller
@SessionAttributes("adminfaq")
public class AdminFaqBoardController {
	
	@Autowired
	private AdminFaqBoardService boardService;
	
	@RequestMapping("/insertBoard.fa")
	public String insertBoard(AdminFaqBoardVO vo, HttpSession session) throws IOException {
	
		String fileSaveFolder = session.getServletContext().getRealPath("/uploadFaq/"); 
		
		MultipartFile uploadFile = vo.getUploadFile();
		if(!uploadFile.isEmpty()) { //비어있으면 true
			String fileName = uploadFile.getOriginalFilename(); //현재 첨부된 파일의 이름을 반환
			uploadFile.transferTo(new File(fileSaveFolder+fileName)); //입력으로 
		}

		boardService.insertBoard(vo);

		return "redirect:getBoardList.fa";
	}
	
	//글 수정
	@RequestMapping("/updateBoard.fa")
	public String updateBoard(@ModelAttribute("board") AdminFaqBoardVO vo) {

	
		boardService.updateBoard(vo);		
		return "redirect:getBoardList.fa";
	}
	
	//글 삭제
	@RequestMapping("/deleteBoard.fa")
	public String deleteBoard(AdminFaqBoardVO vo) {

		boardService.deleteBoard(vo);		
		return "redirect:getBoardList.fa";
	}

	//글 검색 기능 - requestMapping 직전에 ModelAttribute를 호출해주게끔...
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "TITLE");
		conditionMap.put("내용", "CONTENT");
		conditionMap.put("작성자", "WRITER");
		
		return conditionMap;
	}
	
	//글 목록 검색
	@RequestMapping("/getBoardList.fa")
	public String getBoardList(AdminFaqBoardVO vo, Model model) {
		System.out.println("글 목록 검색 처리");
		
		//검색 기능 추가 Null check
		if(vo.getSearchCondition()==null) {
			vo.setSearchCondition("TITLE");
		
		}
		if(vo.getSearchKeyword() == null) {
			vo.setSearchKeyword("");
		
		
		}

		model.addAttribute("faqBoardList", boardService.getBoardList(vo));   

		return "/adminPage/faqAdminList.jsp"; //viewResolver를 삭제했기 때문에 .jsp를 넣어야함.
	}	

	//글 상세 조회
	@RequestMapping("/getBoard.fa")
	public String getBoard(AdminFaqBoardVO vo, Model model) {
		System.out.println("글 상세 조회 처리");	
		
		model.addAttribute("board", boardService.getBoard(vo));
		return "/adminPage/faqAdminDetail.jsp";	
	}	
	
	


}
