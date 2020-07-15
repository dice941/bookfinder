package com.BookFinder.persistence;

import java.util.List;

import com.BookFinder.domain.CsVO;
import com.BookFinder.domain.Criteria;

public interface CsDAO
{
	public void insert(CsVO cvo);

	public List<CsVO> selectList(Criteria cri);

	public CsVO selectOne(Integer cno);

	public void update(CsVO cvo);

	public int update(Integer cno, Integer sign);

	public void delete(Integer cno);

	public void deleteImg(Integer cno);

	public int selectOne(Criteria cri);
}
