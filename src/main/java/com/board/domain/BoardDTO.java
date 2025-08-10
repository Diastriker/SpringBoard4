package com.board.domain;

import lombok.Data;

@Data

public class BoardDTO {
	private int idx;
	private String menu_name;
	private String title;
	private String content ;
	private String writer;
	private String regdate;
	private int hit;
		
}
