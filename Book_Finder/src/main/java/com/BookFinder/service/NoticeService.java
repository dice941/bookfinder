package com.BookFinder.service;

import java.util.List;

import com.BookFinder.domain.NoticeVO;
import com.BookFinder.domain.Criteria;

public interface NoticeService
{
	public void write(NoticeVO nvo);

	public List<NoticeVO> list(Criteria cri);

	public NoticeVO detail(Integer nno);

	public void modify(NoticeVO nvo);

	public void remove(Integer nno);

	public void removeImg(Integer nno);

	public int totalCount(Criteria cri);
}
