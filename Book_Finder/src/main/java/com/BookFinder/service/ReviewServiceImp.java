package com.BookFinder.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.ReviewVO;
import com.BookFinder.persistence.ReviewDAO;
import com.BookFinder.service.ReviewService;

@Service
public class ReviewServiceImp implements ReviewService
{
	private static final Logger log = LoggerFactory.getLogger(ReviewServiceImp.class);
	@Inject
	private ReviewDAO rvdao;// 다형성 이용 , 컴포넌트에 이미 올라와있기 때문에 끌어오기 가능

	@Override
	public void write(ReviewVO rvvo)
	{
		rvdao.insert(rvvo);
	}

	@Override
	public List<ReviewVO> list(Criteria cri)
	{
		return rvdao.selectList(cri);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public ReviewVO detail(Integer rvno)
	{
		rvdao.update(rvno);
		return rvdao.selectOne(rvno);
	}

	@Override
	public void modify(ReviewVO rvvo)
	{
		rvdao.update(rvvo);
	}

	@Override
	public void remove(Integer rvno)
	{
		rvdao.delete(rvno);
	}

	@Override
	public int totalCount(Criteria cri)
	{
		return rvdao.selectOne(cri);
	}

}
