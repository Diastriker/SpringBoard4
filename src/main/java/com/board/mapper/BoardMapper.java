package com.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.board.domain.BoardDTO;

@Mapper
public interface BoardMapper {
	List<BoardDTO> getBoardList(@Param("menu_name") String menu_name);
}
