package com.BookFinder.persistence;

import java.util.List;

import com.BookFinder.domain.NoticeVO;
import com.BookFinder.domain.Criteria;

public interface NoticeDAO
{
	public void insert(NoticeVO nvo);

	public List<NoticeVO> selectList(Criteria cri);

	public NoticeVO selectOne(Integer nno);

	public void update(NoticeVO nvo);

	public int update(Integer nno, Integer sign);

	public void delete(Integer nno);

	public void deleteImg(Integer nno);

	public int selectOne(Criteria cri);
}
