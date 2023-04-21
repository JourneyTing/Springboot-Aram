package com.www.aram.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.www.aram.model.Board;
import com.www.aram.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;

	//@AuthenticationPrincipal PrincipalDetail principal - 파라미터
	@GetMapping({ "", "/" })
	public String index(Model model, @PageableDefault(size=10, sort="id", direction=Sort.Direction.DESC) Pageable pageable) {  // 세션에 접근할 때 이렇게 접근할 수 있음
		model.addAttribute("boards", boardService.contentsList(pageable));
		return "index";  // viewResolver 작동s
	}
	
	@GetMapping("/board/{id}")
	public String findById(@PathVariable int id, Model model) {
		model.addAttribute("board", boardService.detailContents(id));
		return "board/detail";
	}
	
	@GetMapping("/board/{id}/updateForm")
	public String updateForm(@PathVariable int id, Model model) {
		model.addAttribute("board", boardService.detailContents(id));
		return "board/updateForm";
	}
	
	// USER 권한 필요
	@GetMapping("/board/saveForm")
	public String saveForm() {
		return "/board/saveForm";
	}

}
