package com.BookFinder.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.BookVO;
import com.BookFinder.persistence.BookDAO;
import com.BookFinder.service.BookService;

@Service
public class BookServiceImp implements BookService
{
	@Inject
	private BookDAO bdao;// 다형성 이용 , 컴포넌트에 이미 올라와있기 때문에 끌어오기 가능

	@Override
	public void write(BookVO bvo)
	{
		bdao.insert(bvo);
	}

	@Override
	public List<BookVO> list(Criteria cri)
	{
		return bdao.selectList(cri);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BookVO detail(Integer bno)
	{
		// /bdao.update(bno);
		return bdao.selectOne(bno);
	}

	@Override
	public void modify(BookVO bvo)
	{
		bdao.update(bvo);
	}

	@Override
	public void remove(Integer bno)
	{
		bdao.delete(bno);
	}

	@Override
	public void removeImg(Integer bno)
	{
		bdao.delete(bno);

	}

	@Override
	public int totalCount(Criteria cri)
	{
		return bdao.selectOne(cri);
	}

}
