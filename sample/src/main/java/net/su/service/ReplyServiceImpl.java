package net.su.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.su.dao.ReplyDao;
import net.su.vo.ReplyVo;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Resource
	private ReplyDao replyDao;

	public List<ReplyVo> list(int bno) throws Exception {
		return replyDao.list(bno);
	}

	public void write(ReplyVo vo) throws Exception {
		replyDao.write(vo);
	}

	public void modify(ReplyVo vo) throws Exception {
		replyDao.modify(vo);
	}

	public void delete(ReplyVo vo) throws Exception {
		replyDao.delete(vo);
	}
}
