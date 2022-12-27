package net.su.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.su.vo.BoardVo;

@Repository("BoardDao")
public class BoardDao extends CommonDao {

	// 게시판 목록
	public List<BoardVo> list() throws Exception {
		return getSqlSession().selectList("mapper.board_list");
	}

	// 글 작성
	public void write(BoardVo vo) throws Exception {
		getSqlSession().insert("mapper.board_write", vo);
	}

	// 조회
	public BoardVo view(int bno) throws Exception {
		return getSqlSession().selectOne("mapper.board_view", bno);
	}

	// 수정
	public void modify(BoardVo vo) throws Exception {
		getSqlSession().update("mapper.board_modify", vo);
	}

	// 삭제
	public void delete(int bno) throws Exception {
		getSqlSession().delete("mapper.board_delete", bno);
	}

	// 글 갯수
	public int count() throws Exception {
		return getSqlSession().selectOne("mapper.board_count");
	}

	// 글 목록 + 페이징
	public List<BoardVo> listPage(int displayPost, int postNum) throws Exception {
		HashMap<String, Integer> data = new HashMap<String, Integer>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);

		return getSqlSession().selectList("mapper.board_listPage", data);
	}
}