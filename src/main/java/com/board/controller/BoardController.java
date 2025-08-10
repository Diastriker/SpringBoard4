package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.domain.BoardDTO;
import com.board.mapper.BoardMapper;



@Controller
public class BoardController {
	
	@Autowired
	private BoardMapper boardMapper;
	@RequestMapping("/Board")
	public String list( @RequestParam("menu_name") String menu_name,
						Model model
						) {
					
		List<BoardDTO> list = boardMapper.getBoardList(menu_name);
		model.addAttribute("boardList", list);
		System.out.println(list);
		return "board/list";
	}
}
