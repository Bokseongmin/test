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
import net.su.vo.PageVo;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Resource
	private BoardService service;

	// 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		List<BoardVo> list = service.list();

		model.addAttribute("list", list);
	}

	// 작성
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite() throws Exception {

	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(BoardVo vo) throws Exception {
		service.write(vo);
		return "redirect:/board/list";
	}

	// 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno, Model model) throws Exception {
		BoardVo vo = service.view(bno);

		model.addAttribute("view", vo);
	}

	// 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno, Model model) throws Exception {
		BoardVo vo = service.view(bno);

		model.addAttribute("view", vo);
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(BoardVo vo) throws Exception {
		service.modify(vo);

		return "redirect:/board/view?bno=" + vo.getBno();
	}

	// 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(@RequestParam("bno") int bno) throws Exception {
		service.delete(bno);

		return "redirect:/board/list";
	}

	// 글 목록 + 페이징
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void getListPage(@RequestParam("num") int num, Model model) throws Exception {

		PageVo page = new PageVo();

		page.setNum(num);
		page.setCount(service.count());

		List list = null;
		list = service.listPage(page.getDisplayPost(), page.getPostNum());

		model.addAttribute("list", list);
		model.addAttribute("pageNum", page.getPageNum());

		model.addAttribute("startPageNum", page.getStartPageNum());
		model.addAttribute("endPageNum", page.getEndPageNum());

		model.addAttribute("prev", page.isPrev());
		model.addAttribute("next", page.isNext());

		model.addAttribute("page", page);
		model.addAttribute("select", num);
	}

	// 글 목록 + 페이징 + 검색
	@RequestMapping(value = "/listSearch", method = RequestMethod.GET)
	public void getListSearch(@RequestParam("num") int num, 
			@RequestParam(value="searchType", required = false, defaultValue = "") String searchType, 
			@RequestParam(value="keyword", required = false, defaultValue = "") String keyword, 
			Model model) throws Exception {

		PageVo page = new PageVo();

		page.setNum(num);
		page.setCount(service.count());

		List<BoardVo> list = service.listSearch(page.getDisplayPost(), page.getPostNum(), searchType, keyword);

		model.addAttribute("list", list);
		model.addAttribute("page", page);
		model.addAttribute("select", num);
	}
}
