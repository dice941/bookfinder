package com.BookFinder.domain;

import java.sql.Date;

public class CsVO
{
	private int cno;
	private String title;
	private String csid;
	private String cspw;
	private String content;
	private Date regd8;
	private String imgfile;

	public CsVO()
	{
	}
	
	//list view vo
	public CsVO(int cno, String title, String csid, Date regd8)
	{
		this.cno = cno;
		this.title = title;
		this.csid = csid;
		this.regd8 = regd8;
	}

	public CsVO(String title, String csid, String cspw, String content)
	{
		this.title = title;
		this.csid = csid;
		this.cspw = cspw;
		this.content = content;
	}

	public CsVO(int cno, String title, String csid, String cspw, String content)
	{
		this.cno = cno;
		this.title = title;
		this.csid = csid;
		this.cspw = cspw;
		this.content = content;
	}

	public int getCno()
	{
		return cno;
	}

	public void setCno(int cno)
	{
		this.cno = cno;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
	}

	public String getCsid()
	{
		return csid;
	}

	public void setCsid(String csid)
	{
		this.csid = csid;
	}

	public String getCspw()
	{
		return cspw;
	}

	public void setCspw(String cspw)
	{
		this.cspw = cspw;
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

	public String getImgfile()
	{
		return imgfile;
	}

	public void setImgfile(String imgfile)
	{
		this.imgfile = imgfile;
	}

}
