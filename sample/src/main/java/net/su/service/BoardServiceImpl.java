package net.su.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import net.su.dao.BoardDao;
import net.su.vo.BoardVo;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Resource
	private BoardDao boardDao;
	
	public List<BoardVo> list() throws Exception {
		return boardDao.list();
	}

	public void write(BoardVo vo) throws Exception {
		boardDao.write(vo);
	}

	public BoardVo view(int bno) throws Exception {
		return boardDao.view(bno);
	}

	public void modify(BoardVo vo) throws Exception {
		boardDao.modify(vo);
	}

	public void delete(int bno) throws Exception {
		boardDao.delete(bno);
	}

	public int count() throws Exception {
		return boardDao.count();
	}

	public List listPage(int displayPost, int postNum) throws Exception {
		return boardDao.listPage(displayPost, postNum);
	}
}
