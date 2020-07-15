package com.BookFinder.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.CsVO;
import com.BookFinder.persistence.CsDAO;
import com.BookFinder.service.CsService;

@Service
public class CsServiceImp implements CsService
{
	@Inject
	private CsDAO cdao;// 다형성 이용 , 컴포넌트에 이미 올라와있기 때문에 끌어오기 가능

	@Override
	public void write(CsVO cvo)
	{
		cdao.insert(cvo);
	}

	@Override
	public List<CsVO> list(Criteria cri)
	{
		return cdao.selectList(cri);
	}

	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public CsVO detail(Integer cno)
	{
		// /bdao.update(bno);
		return cdao.selectOne(cno);
	}

	@Override
	public void modify(CsVO cvo)
	{
		cdao.update(cvo);
	}

	@Override
	public void remove(Integer cno)
	{
		cdao.delete(cno);
	}

	@Override
	public void removeImg(Integer cno)
	{
		cdao.delete(cno);

	}

	@Override
	public int totalCount(Criteria cri)
	{
		return cdao.selectOne(cri);
	}

}
