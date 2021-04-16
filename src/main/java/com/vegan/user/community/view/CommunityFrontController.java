package com.vegan.user.community.view;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.vegan.user.community.repository.CommunityVO;
import com.vegan.user.community.service.CommunityService;

@Controller
@SessionAttributes("community")
public class CommunityFrontController { //커뮤니티 게시판
	
	@Autowired
	private CommunityService communityService;
	
	//글 작성
	@RequestMapping(value = "/insertCmnt.co") 
	public String insertCmnt(CommunityVO vo, HttpSession session) throws IOException {
		System.out.println("글 작성 처리");
		
		//파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/communityUpload/");
		MultipartFile uploadFile = vo.getFile();
		if(!uploadFile.isEmpty()) { //파일이 첨부된 경우 
			String fileName = uploadFile.getOriginalFilename(); 
			System.out.println(fileName);
			uploadFile.transferTo(new File(fileSaveFolder+fileName)); 
			vo.setCmnt_file(fileSaveFolder+fileName); //파일 경로 저장
		}else { //파일이 첨부되지 않은 경우
			vo.setCmnt_file("파일이 첨부되지 않았습니다.");
		}
		
		communityService.insertCmnt(vo);
		return "redirect:getCmntList.co"; //전체 글 페이지 이동
	}

	//목록 검색용 데이터
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<>();
		conditionMap.put("내용", "CONTENT");
		conditionMap.put("제목", "SUBJECT");
		return conditionMap;
	}
	
	//페이징 처리 데이터
//	@ModelAttribute("paging")
//	public List<CommunityVO> setPaging() {
//		CommunityVO vo = new CommunityVO();
//		List<CommunityVO> paging = new ArrayList<>();
//		paging.add(vo);
//		return paging;
//	}
	
	//전체 글 조회
	@RequestMapping("/getCmntList.co") 
	public String getCmntList(CommunityVO vo, Model model) {
//		System.out.println("전체 글 조회 처리");
		//검색
		if(vo.getSearchCondition() == null) { vo.setSearchCondition("SUBJECT"); }
		if(vo.getSearchKeyword() == null) { vo.setSearchKeyword(""); }
		
		model.addAttribute("communityList", communityService.getCmntList(vo));
		
		return "community/getCmntList.jsp"; //전체 글 페이지 이동
	}
	
	//글 상세 조회
	@RequestMapping("/getCmnt.co") 
	public String getCmnt(CommunityVO vo, Model model) {
		System.out.println("글 상세 조회 처리");
		communityService.updateReadcount(vo); //조회수 업데이트
		model.addAttribute("community", communityService.getCmnt(vo));
		return "community/getCmnt.jsp"; //글 상세 페이지 이동
	}
	
	//글 수정
	@RequestMapping(value = "/updateCmnt.co", method = RequestMethod.POST) 
	public String updateCmnt(@ModelAttribute("community") CommunityVO vo) {
		System.out.println("글 수정 처리");
		communityService.updateCmnt(vo);
		return "redirect:community/getCmnt.jsp"; //글 상세 페이지 이동
	}
	
	//글 삭제
	@RequestMapping("/deleteCmnt.co") 
	public String deleteMember(CommunityVO vo) {
		System.out.println("글 삭제 처리");
		communityService.deleteCmnt(vo);
		return "/getCmntList.co"; //전체 글 페이지 이동
	}
	
}
