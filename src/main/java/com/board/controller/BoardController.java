package com.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.board.domain.BoardDTO;
import com.board.mapper.BoardMapper;
import com.board.menus.domain.MenuDTO;
import com.board.menus.mapper.MenuMapper;



@Controller
@RequestMapping("/Board")
public class BoardController {
	
	@Autowired
	private MenuMapper menuMapper;
	@Autowired
	private BoardMapper boardMapper;
	
	// http://localhost:9090/Board/TotalList?menu_id=MENU04
	@RequestMapping("/TotalList")
	public ModelAndView list( MenuDTO menuDTO) {
		// 메뉴 리스트
		List<MenuDTO> menuList = menuMapper.getMenuList();
		
		// 게시물 목록처리
		List<BoardDTO> boardList = boardMapper.getTotalList(menuDTO);
		
		MenuDTO menudto = menuMapper.getMenu(menuDTO);
		ModelAndView mv = new ModelAndView();
		mv.addObject("menudto",menudto);
		mv.addObject("boardList",boardList);
		mv.addObject("menuList",menuList);
		System.out.println(boardList);
		mv.setViewName("board/boardtotallist"); // jsp 파일
		return mv;
	}
	
	@RequestMapping("")
	public ModelAndView list( @RequestParam("menu_name") String menu_name ) {
		List<BoardDTO> boardList = boardMapper.getBoardList(menu_name);
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardList", boardList); // model.addAttribute 역할
		mv.setViewName("board/boardlist"); // jsp 파일
		return mv;
		/*
		List<BoardDTO> list = boardMapper.getBoardList(menu_name);
		model.addAttribute("boardList", list);
		System.out.println(list);
		return "board/boardlist";
		*/
	}
	
	
	@RequestMapping("/WriteForm")
	// http://localhost:9090/Board/WriteForm?menu_id=MENU01
	public ModelAndView writeForm(MenuDTO menuDTO) {
			
		// 메뉴 목록을 조회
		List<MenuDTO> menuList = menuMapper.getMenuList();
		
		menuDTO    = menuMapper.getMenu(menuDTO); 
		
		String menu_id = menuDTO.getMenu_id();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("menuDTO", menuDTO);
		mv.addObject("menuList", menuList);
		mv.setViewName("/board/boardwrite");
		return mv;
	}
	
	@RequestMapping("/Write")
	public ModelAndView write(BoardDTO boardDTO) {
		boardMapper.insertBoard(boardDTO);
		ModelAndView mv = new ModelAndView();
		
		String menu_id = boardDTO.getMenu_id();
		
		mv.setViewName("redirect:/Board/TotalList?menu_id=" + menu_id);
		System.out.println("추가:" + boardDTO);
		return mv;
	}
}





