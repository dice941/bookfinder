package com.BookFinder.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.BookFinder.domain.Criteria;
import com.BookFinder.domain.ReviewVO;

@Repository
public class ReviewDAOImp implements ReviewDAO
{
	private static String ns = "ReviewMapper.";
	@Inject
	private SqlSession sql;

	@Override
	public void insert(ReviewVO rvvo)
	{
		sql.insert(ns + "add", rvvo);
	}

	@Override
	public List<ReviewVO> selectList(Criteria cri)
	{
		return sql.selectList(ns + "list", cri);
	}

	@Override
	public ReviewVO selectOne(Integer rvno)
	{
		return sql.selectOne(ns + "detail", rvno);
	}

	@Override
	public void update(ReviewVO rvvo)
	{
		sql.update(ns + "modify", rvvo);
	}

	@Override
	public void update(Integer rvno)
	{
		sql.update(ns + "upReadCount", rvno);
	}

	@Override
	public int update(Integer rvno, Integer sign)
	{
		Map<String, Object> map = new HashMap<>();
		map.put("rvno", rvno);
		map.put("sign", sign);
		return sql.update(ns + "upCount", map);
	}

	@Override
	public void delete(Integer rvno)
	{
		sql.delete(ns + "remove", rvno);
	}

	@Override
	public int selectOne(Criteria cri)
	{
		return sql.selectOne(ns + "total", cri);
	}

}
