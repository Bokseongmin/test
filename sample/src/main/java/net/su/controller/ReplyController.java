package net.su.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import net.su.service.ReplyService;
import net.su.vo.ReplyVo;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {
	@Resource
	private ReplyService replyService;
	
	// 댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWirte(ReplyVo vo) throws Exception {
		
		replyService.write(vo);
		
		return "redirect:/board/view?bno=" + vo.getBno();
	}
	
	//댓글 수정 페이지
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno, @RequestParam("rno") int rno, Model model) throws Exception {
		ReplyVo vo = new ReplyVo();
		
		vo.setBno(bno);
		vo.setRno(rno);
		
		ReplyVo reply = replyService.reply_select(vo);
		
		model.addAttribute("reply", reply);
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(ReplyVo vo) throws Exception {
		replyService.modify(vo);
		
		return "redirect:/board/view?bno=" + vo.getBno();
	}
	
	
	//댓글 삭제
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String getDelete(ReplyVo vo) throws Exception {
		replyService.delete(vo);

		return  "redirect:/board/view?bno=" + vo.getBno();
	}
}