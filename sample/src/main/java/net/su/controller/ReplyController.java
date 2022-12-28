package net.su.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.su.service.BoardService;
import net.su.service.ReplyService;
import net.su.vo.ReplyVo;

@Controller
@RequestMapping("/reply/*")
public class ReplyController {
	@Resource
	private ReplyService replyService;
	
	// 댓글 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String posttWirte(ReplyVo vo) throws Exception {
		
		replyService.write(vo);
		
		return "redirect:/board/view?bno=" + vo.getBno();
	}
}
