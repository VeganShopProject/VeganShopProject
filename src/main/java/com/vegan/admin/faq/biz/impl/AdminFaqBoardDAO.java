package com.vegan.admin.faq.biz.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vegan.admin.faq.biz.AdminFaqBoardVO;

@Repository
public class AdminFaqBoardDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertBoard(AdminFaqBoardVO vo) {
		mybatis.insert("AdminFaqBoardDAOTemp.insertBoard", vo);
	}

	public void updateBoard(AdminFaqBoardVO vo) {

		mybatis.update("AdminFaqBoardDAOTemp.updateBoard", vo);
	}

	public void deleteBoard(AdminFaqBoardVO vo) {
		mybatis.delete("AdminFaqBoardDAOTemp.deleteBoard", vo);
	}
	


	public AdminFaqBoardVO getBoard(AdminFaqBoardVO vo) {
		return mybatis.selectOne("AdminFaqBoardDAOTemp.getBoard", vo);

	}


	public List<AdminFaqBoardVO> getBoardList(AdminFaqBoardVO vo) {

		if(vo.getSearchCondition().equals("TITLE")) {
			return mybatis.selectList("AdminFaqBoardDAOTemp.getBoardList_T", vo);
		}else if(vo.getSearchCondition().equals("CONTENT")) {
			return mybatis.selectList("AdminFaqBoardDAOTemp.getBoardList_C", vo);
		}else if(vo.getSearchCondition().equals("WRITER")) {
			return mybatis.selectList("AdminFaqBoardDAOTemp.getBoardList_W", vo);
		}else {
			return mybatis.selectList("AdminFaqBoardDAOTemp.getBoardList_T", vo);
		}
	
	}



}
