package net.su.service;

import java.util.List;

import net.su.vo.ReplyVo;

public interface ReplyService {
	// 댓글 조회
	public List<ReplyVo> list(int bno) throws Exception;

	// 댓글 조회
	public void write(ReplyVo vo) throws Exception;

	// 댓글 수정
	public void modify(ReplyVo vo) throws Exception;
	
	// 수정 페이지
	public ReplyVo reply_select(ReplyVo vo) throws Exception;

	// 댓글 삭제
	public void delete(ReplyVo vo) throws Exception;
}
