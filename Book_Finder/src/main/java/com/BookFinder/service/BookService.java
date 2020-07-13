package com.BookFinder.service;

import java.util.List;

import com.BookFinder.domain.BookVO;
import com.BookFinder.domain.Criteria;

public interface BookService
{
	public void write(BookVO bvo);

	public List<BookVO> list(Criteria cri);

	public BookVO detail(Integer bno);

	public void modify(BookVO bvo);

	public void remove(Integer bno);

	public void removeImg(Integer bno);

	public int totalCount(Criteria cri);
}
