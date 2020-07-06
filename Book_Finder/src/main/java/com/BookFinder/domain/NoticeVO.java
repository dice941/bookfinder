package com.BookFinder.domain;

import java.sql.Date;

public class NoticeVO
{
	private int num;
	private String title;
	private String content;
	private Date regdate;
	private Date moddate;

	public NoticeVO()
	{
	}

	public NoticeVO(String title, String writer, String content)
	{
		this.title = title;
		this.content = content;
	}

	public NoticeVO(int num, String title, String content)
	{
		this.num = num;
		this.title = title;
		this.content = content;
	}
}
