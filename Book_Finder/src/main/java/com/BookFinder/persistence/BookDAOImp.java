package com.BookFinder.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.BookFinder.domain.BookVO;
import com.BookFinder.domain.Criteria;

@Repository
public class BookDAOImp implements BookDAO
{
	private static String ns = "BookMapper.";
	@Inject
	private SqlSession sql;

	@Override
	public void insert(BookVO bvo)
	{
		sql.insert(ns + "add", bvo);
	}

	@Override
	public List<BookVO> selectList(Criteria cri)
	{
		return sql.selectList(ns + "list", cri);
	}

	@Override
	public BookVO selectOne(Integer bno)
	{
		return sql.selectOne(ns + "detail", bno);
	}

	@Override
	public void update(BookVO bvo)
	{
		sql.update(ns + "modify", bvo);
	}

	@Override
	public int update(Integer bno, Integer sign)
	{
		Map<String, Object> map = new HashMap<>();
		map.put("bno", bno);
		map.put("sign", sign);
		return sql.update(ns + "upCount", map);
	}

	@Override
	public void delete(Integer bno)
	{
		sql.delete(ns + "remove", bno);
	}

	@Override
	public void deleteImg(Integer bno)
	{
		Map<String, Object> map = new HashMap<>();
		map.put("bno", bno);
		map.put("imgfile", "NONE");
		sql.update(ns + "rmImg", map);

	}

	@Override
	public int selectOne(Criteria cri)
	{
		return sql.selectOne(ns + "total", cri);
	}

}
