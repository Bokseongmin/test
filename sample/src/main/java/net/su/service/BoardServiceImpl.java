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
	
	@Override
	public List<BoardVo> list() throws Exception {
		return boardDao.list();
	}

	public void write(BoardVo vo) throws Exception {
		boardDao.write(vo);
	}
}
