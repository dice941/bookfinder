package com.BookFinder.domain;

import java.sql.Date;

public class ReviewVO
{
	private int rvno;
	private String rvtitle;
	private String rvwriter;
	private String rvcontent;
	private Date regd8;
	private Date modd8;
	private int readcount;

	public ReviewVO()
	{
	}

	public ReviewVO(String rvtitle, String rvwriter, String rvcontent)
	{
		this.rvtitle = rvtitle;
		this.rvwriter = rvwriter;
		this.rvcontent = rvcontent;
		System.out.printf(rvtitle, rvwriter, rvcontent);
	}

	public ReviewVO(int rvno, String rvtitle, String rvwriter)
	{
		this.rvno = rvno;
		this.rvtitle = rvtitle;
		this.rvwriter = rvwriter;
	}

	public ReviewVO(int rvno, String rvtitle, String rvwriter, String rvcontent)
	{
		this.rvno = rvno;
		this.rvtitle = rvtitle;
		this.rvwriter = rvwriter;
		this.rvcontent = rvcontent;
	}

	public int getRvno()
	{
		return rvno;
	}

	public void setRvno(int rvno)
	{
		this.rvno = rvno;
	}

	public String getRvtitle()
	{
		return rvtitle;
	}

	public void setRvtitle(String rvtitle)
	{
		this.rvtitle = rvtitle;
	}

	public String getRvwriter()
	{
		return rvwriter;
	}

	public void setRvwriter(String rvwriter)
	{
		this.rvwriter = rvwriter;
	}

	public String getRvcontent()
	{
		return rvcontent;
	}

	public void setRvcontent(String rvcontent)
	{
		this.rvcontent = rvcontent;
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

	public int getReadcount()
	{
		return readcount;
	}

	public void setReadcount(int readcount)
	{
		this.readcount = readcount;
	}


}
