package com.BookFinder.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.BookFinder.domain.NoticeVO;
import com.BookFinder.domain.Criteria;

@Repository
public class NoticeDAOImp implements NoticeDAO
{
	private static String ns = "NoticeMapper.";
	@Inject
	private SqlSession sql;

	@Override
	public void insert(NoticeVO nvo)
	{
		sql.insert(ns + "add", nvo);
	}

	@Override
	public List<NoticeVO> selectList(Criteria cri)
	{
		return sql.selectList(ns + "list", cri);
	}

	@Override
	public NoticeVO selectOne(Integer nno)
	{
		return sql.selectOne(ns + "detail", nno);
	}

	@Override
	public void update(NoticeVO nvo)
	{
		sql.update(ns + "modify", nvo);
	}

	@Override
	public int update(Integer nno, Integer sign)
	{
		Map<String, Object> map = new HashMap<>();
		map.put("nno", nno);
		map.put("sign", sign);
		return sql.update(ns + "upCount", map);
	}

	@Override
	public void delete(Integer nno)
	{
		sql.delete(ns + "remove", nno);
	}

	@Override
	public void deleteImg(Integer nno)
	{
		Map<String, Object> map = new HashMap<>();
		map.put("nno", nno);
		map.put("imgfile", "NONE");
		sql.update(ns + "rmImg", map);

	}

	@Override
	public int selectOne(Criteria cri)
	{
		return sql.selectOne(ns + "total", cri);
	}

}
