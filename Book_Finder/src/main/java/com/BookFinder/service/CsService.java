package com.BookFinder.service;

import java.util.List;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.CsVO;

public interface CsService
{
	public void write(CsVO cvo);

	public List<CsVO> list(Criteria cri);

	public CsVO detail(Integer cno);

	public void modify(CsVO cvo);

	public void remove(Integer cno);

	public void removeImg(Integer cno);

	public int totalCount(Criteria cri);
}
