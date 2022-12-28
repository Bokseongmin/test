package net.su.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.su.vo.ReplyVo;

@Repository("ReplyDao")
public class ReplyDao extends CommonDao{
	// 댓글 조회
	public List<ReplyVo> list(int bno) throws Exception {
		return getSqlSession().selectList("reply.reply_list", bno);
	}

	// 댓글 조회
	public void write(ReplyVo vo) throws Exception {
		getSqlSession().insert("reply.reply_write", vo);
	}

	// 댓글 수정
	public void modify(ReplyVo vo) throws Exception {
		getSqlSession().update("reply.reply_modify", vo);
	}

	// 댓글 삭제
	public void delete(ReplyVo vo) throws Exception {
		getSqlSession().delete("reply.reply_delete", vo);
	}
}
