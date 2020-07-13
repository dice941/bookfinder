package com.BookFinder.domain;

import java.sql.Date;

public class BookVO
{
	private int bno;
	private String btitle;
	private String writer;
	private String content;
	private String publisher;
	private int price;
	private Date regd8;
	private Date modd8;
	private int point;
	private String bimgfile;

	public BookVO()
	{
	}

	public BookVO(String btitle, String writer, String content)
	{
		this.btitle = btitle;
		this.writer = writer;
		this.content = content;
	}

	public BookVO(int bno, String btitle, String writer)
	{
		this.bno = bno;
		this.btitle = btitle;
		this.writer = writer;
	}

	public BookVO(int bno, String btitle, String writer, String content)
	{
		this.bno = bno;
		this.btitle = btitle;
		this.writer = writer;
		this.content = content;
	}

	public BookVO(String btitle, String writer, String publisher, int price, String content)
	{
		this.btitle = btitle;
		this.writer = writer;
		this.publisher = publisher;
		this.price = price;
		this.content = content;
	}

	public int getBno()
	{
		return bno;
	}

	public void setBno(int bno)
	{
		this.bno = bno;
	}

	public String getBtitle()
	{
		return btitle;
	}

	public void setBtitle(String btitle)
	{
		this.btitle = btitle;
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

	public String getPublisher()
	{
		return publisher;
	}

	public void setPublisher(String publisher)
	{
		this.publisher = publisher;
	}

	public int getPrice()
	{
		return price;
	}

	public void setPrice(int price)
	{
		this.price = price;
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

	public int getPoint()
	{
		return point;
	}

	public void setPoint(int point)
	{
		this.point = point;
	}

	public String getBimgfile()
	{
		return bimgfile;
	}

	public void setBimgfile(String bimgfile)
	{
		this.bimgfile = bimgfile;
	}

}
