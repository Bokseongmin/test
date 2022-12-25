package net.su.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.su.vo.BoardVo;

@Repository("BoardDao")
public class BoardDao extends CommonDao{
	
	// 게시판 조회
	public List<BoardVo> list() throws Exception {
		return getSqlSession().selectList("mapper.board_list");
	}
	
	// 글 작성
	public void write(BoardVo vo) throws Exception {
		getSqlSession().insert("mapper.board_write", vo);
	}
}