package com.BookFinder.domain;

import java.sql.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import lombok.Data;

@Data
public class CsVO
{
	private static final Logger log = LoggerFactory.getLogger(CsVO.class);
	private int num;
	private String id;
	private String pw;
	private String content;
	private Date regdate;

	public CsVO()
	{
	}

	public CsVO(String id, String pw, String content)
	{
		this.id = id;
		this.pw = pw;
		this.content = content;
	}

	public int getNum()
	{
		return num;
	}

	public void setNum(int num)
	{
		this.num = num;
	}

	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	public String getPw()
	{
		return pw;
	}

	public void setPw(String pw)
	{
		this.pw = pw;
	}

	public String getContent()
	{
		return content;
	}

	public void setContent(String content)
	{
		this.content = content;
	}

	public Date getRegdate()
	{
		return regdate;
	}

	public void setRegdate(Date regdate)
	{
		this.regdate = regdate;
	}

}
