package com.BookFinder.persistence;

import java.util.List;

import com.BookFinder.domain.BookVO;
import com.BookFinder.domain.Criteria;

public interface BookDAO
{
	public void insert(BookVO bvo);

	public List<BookVO> selectList(Criteria cri);

	public BookVO selectOne(Integer bno);

	public void update(BookVO bvo);

	public int update(Integer bno, Integer sign);

	public void delete(Integer bno);

	public void deleteImg(Integer bno);

	public int selectOne(Criteria cri);
}
