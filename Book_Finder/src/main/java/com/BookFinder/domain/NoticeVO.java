package com.BookFinder.domain;

import java.sql.Date;

public class NoticeVO
{
	private int nno;
	private String title;
	private String writer;
	private String content;
	private Date regd8;
	private Date modd8;
	private String imgfile;

	public NoticeVO()
	{
	}

	public NoticeVO(String title, String writer, String content)
	{
		this.title = title;
		this.writer = writer;
		this.content = content;
	}

	public NoticeVO(int nno, String title, String writer, String content)
	{
		this.nno = nno;
		this.title = title;
		this.writer = writer;
		this.content = content;
	}

	public int getNno()
	{
		return nno;
	}

	public void setNno(int nno)
	{
		this.nno = nno;
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

	public String getImgfile()
	{
		return imgfile;
	}

	public void setImgfile(String imgfile)
	{
		this.imgfile = imgfile;
	}

}
