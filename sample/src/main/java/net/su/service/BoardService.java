package net.su.service;

import java.util.List;

import net.su.vo.BoardVo;

public interface BoardService {
	public List<BoardVo> list() throws Exception; //게시판 목록
	
	public void write(BoardVo vo) throws Exception; //글 작성
	
	public BoardVo view(int bno) throws Exception; //조회
	
	public void viewCnt(int bno) throws Exception; //조회수
	
	public void modify(BoardVo vo) throws Exception; //수정
	
	public void delete(int bno) throws Exception; //삭제
	
	public int count() throws Exception; //글 갯수

	public List<BoardVo> listPage(int displayPost, int postNum) throws Exception; //글 목록 + 페이징
	
	public List<BoardVo> listSearch(int displayPost, int postNum, String searchType, String keyword) throws Exception; // 글 목록 + 페이징 + 검색

	public int searchCount(String searchType, String keyword) throws Exception;//게시물 총 갯수 + 검색
}
