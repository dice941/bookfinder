package com.BookFinder.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.BookFinder.domain.CsVO;
import com.BookFinder.domain.Criteria;

@Repository
public class CsDAOImp implements CsDAO
{
	private static String ns = "CsMapper.";
	@Inject
	private SqlSession sql;

	@Override
	public void insert(CsVO cvo)
	{
		sql.insert(ns + "add", cvo);
	}

	@Override
	public List<CsVO> selectList(Criteria cri)
	{
		return sql.selectList(ns + "list", cri);
	}

	@Override
	public CsVO selectOne(Integer cno)
	{
		return sql.selectOne(ns + "detail", cno);
	}

	@Override
	public void update(CsVO cvo)
	{
		sql.update(ns + "modify", cvo);
	}

	@Override
	public int update(Integer cno, Integer sign)
	{
		Map<String, Object> map = new HashMap<>();
		map.put("cno", cno);
		map.put("sign", sign);
		return sql.update(ns + "upCount", map);
	}

	@Override
	public void delete(Integer cno)
	{
		sql.delete(ns + "remove", cno);
	}

	@Override
	public void deleteImg(Integer cno)
	{
		Map<String, Object> map = new HashMap<>();
		map.put("cno", cno);
		map.put("imgfile", "NONE");
		sql.update(ns + "rmImg", map);

	}

	@Override
	public int selectOne(Criteria cri)
	{
		return sql.selectOne(ns + "total", cri);
	}

}
