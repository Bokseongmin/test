package net.su.service;

import java.util.List;

import net.su.vo.BoardVo;

public interface BoardService {
	public List<BoardVo> list() throws Exception; //게시판 목록
	
	public void write(BoardVo vo) throws Exception; //글 작성
	
	public BoardVo view(int bno) throws Exception; //조회
	
	public void modify(BoardVo vo) throws Exception; //수정
}
