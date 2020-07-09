package com.BookFinder.persistence;

import java.util.List;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.ReviewVO;

public interface ReviewDAO
{
	public void insert(ReviewVO rvvo);

	public List<ReviewVO> selectList(Criteria cri);

	public ReviewVO selectOne(Integer rvno);
	
	public void update(ReviewVO rvvo);
	
	public void update(Integer rvno);

	public int update(Integer rvno, Integer sign);
	
	public void delete(Integer rvno);
	
	public void deleteImg(Integer rvno);

	public int selectOne(Criteria cri);
}
