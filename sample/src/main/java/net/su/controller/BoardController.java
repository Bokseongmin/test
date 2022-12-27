package net.su.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.su.service.BoardService;
import net.su.vo.BoardVo;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Resource
	private BoardService service;
	
	//목록
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public void getList(Model model) throws Exception{
		List<BoardVo> list = service.list();
		
		model.addAttribute("list", list);
	}
	
	//작성
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public void getWrite() throws Exception {
		
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public String postWrite(BoardVo vo) throws Exception {
		service.write(vo);
		return "redirect:/board/list";
	}
	
	//조회
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno, Model model) throws Exception {
		BoardVo vo = service.view(bno);
		
		model.addAttribute("view", vo);
	}
	
	//수정
	@RequestMapping(value="/modify", method=RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno, Model model) throws Exception {
		BoardVo vo = service.view(bno);
		
		model.addAttribute("view", vo);
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String postModify(BoardVo vo) throws Exception {
		service.modify(vo);
		
		return "redirect:/board/view?bno=" + vo.getBno();
	}
	
	//삭제
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String getDelete(@RequestParam("bno") int bno) throws Exception {
		service.delete(bno);
		
		return "redirect:/board/list";
	}
	
	//글 목록 + 페이징
	@RequestMapping(value="/listPage", method=RequestMethod.GET)
	public void getListPage(@RequestParam("num") int num, Model model) throws Exception {
		int count = service.count();
		
		int postNum = 10;
		
		int pageNum = (int)Math.ceil((double)count/postNum);
		
		int displayPost = (num - 1) * postNum;
		
		int pageNum_cnt = 10;
		
		int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
		
		int startPageNum = endPageNum - (pageNum_cnt -1);
		
		int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
		 
		if(endPageNum > endPageNum_tmp) {
		 endPageNum = endPageNum_tmp;
		}
		
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		
		List<BoardVo> list = service.listPage(displayPost, postNum);
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);

		// 이전 및 다음 
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		model.addAttribute("select", num);
	}
}
