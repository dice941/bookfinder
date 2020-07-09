package com.BookFinder.domain;

//페이징을 위한 크리테리아 클래스
public class Criteria
{
	// 현재 페이지의 번호
	private int pageNum;
	// 최대로 보여질 페이지 갯수
	private int amount;
	private String type;
	private String keyword;

	// 크리테리아를 호출하면 아래의 함수들이 호출됨
	public Criteria(int pageNum, int amount)
	{
		this.pageNum = pageNum;
		this.amount = amount;
	}

	// 최초의 페이지는 1, 최대로 보여질 페이지 갯수는 10개를 지정
	public Criteria()
	{
		this(1, 10);
	}

	public int getPageNum()
	{
		return pageNum;
	}

	public void setPageNum(int pageNum)
	{
		this.pageNum = pageNum;
	}

	public int getAmount()
	{
		return amount;
	}

	public void setAmount(int amount)
	{
		this.amount = amount;
	}

	public String getType()
	{
		return type;
	}

	public void setType(String type)
	{
		this.type = type;
	}

	public String getKeyword()
	{
		return keyword;
	}

	public void setKeyword(String keyword)
	{
		this.keyword = keyword;
	}
}
