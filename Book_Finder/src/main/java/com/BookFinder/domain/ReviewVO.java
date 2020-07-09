package com.BookFinder.domain;

import java.sql.Date;

public class ReviewVO
{
	private int rvno;
	private String title;
	private String writer;
	private String content;
	private Date regd8;
	private Date modd8;
	private int readcount;
	private String imgfile;
	private int commentcnt;

	public ReviewVO()
	{
	}

	public ReviewVO(String title, String writer, String content)
	{
		this.title = title;
		this.writer = writer;
		this.content = content;
	}

	public int getReadcount()
	{
		return readcount;
	}

	public void setReadcount(int readcount)
	{
		this.readcount = readcount;
	}

	public String getImgfile()
	{
		return imgfile;
	}

	public void setImgfile(String imgfile)
	{
		this.imgfile = imgfile;
	}

	public int getCommentcnt()
	{
		return commentcnt;
	}

	public void setCommentcnt(int commentcnt)
	{
		this.commentcnt = commentcnt;
	}

	public ReviewVO(int rvno, String title, String writer)
	{
		this.rvno = rvno;
		this.title = title;
		this.writer = writer;
	}

	public int getRvno()
	{
		return rvno;
	}

	public void setRvno(int rvno)
	{
		this.rvno = rvno;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getWriter()
	{
		return writer;
	}

	public void setWriter(String writer)
	{
		this.writer = writer;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public Date getRegd8()
	{
		return regd8;
	}

	public void setRegd8(Date regd8)
	{
		this.regd8 = regd8;
	}

	public Date getModd8()
	{
		return modd8;
	}

	public void setModd8(Date modd8)
	{
		this.modd8 = modd8;
	}

}
