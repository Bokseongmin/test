package net.su.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.su.service.BoardService;
import net.su.vo.BoardVo;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Resource
	private BoardService service;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void getList(Model model) throws Exception{
		List<BoardVo> list = service.list();
		
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public void getWrite() throws Exception {
		
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String postWrite(BoardVo vo) throws Exception {
		service.write(vo);
		return "redirect:/board/list";
	}
}
