package com.BookFinder.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.NoticeVO;
import com.BookFinder.persistence.NoticeDAO;
import com.BookFinder.service.NoticeService;

@Service
public class NoticeServiceImp implements NoticeService
{
	@Inject
	private NoticeDAO ndao;// 다형성 이용 , 컴포넌트에 이미 올라와있기 때문에 끌어오기 가능

	@Override
	public void write(NoticeVO nvo)
	{
		ndao.insert(nvo);
	}

	@Override
	public List<NoticeVO> list(Criteria cri)
	{
		return ndao.selectList(cri);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public NoticeVO detail(Integer nno)
	{
		//ndao.update(nno);
		return ndao.selectOne(nno);
	}

	@Override
	public void modify(NoticeVO nvo)
	{
		ndao.update(nvo);
	}

	@Override
	public void remove(Integer nno)
	{
		ndao.delete(nno);
	}

	@Override
	public void removeImg(Integer nno)
	{
		ndao.delete(nno);

	}

	@Override
	public int totalCount(Criteria cri)
	{
		return ndao.selectOne(cri);
	}

}
