package com.BookFinder.service;

import java.util.List;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.ReviewVO;

public interface ReviewService
{
	public void write(ReviewVO rvvo);

	public List<ReviewVO> list(Criteria cri);

	public ReviewVO detail(Integer rvno);

	public void modify(ReviewVO rvvo);

	public void remove(Integer rvno);

	public void removeImg(Integer rvno);

	public int totalCount(Criteria cri);
}
