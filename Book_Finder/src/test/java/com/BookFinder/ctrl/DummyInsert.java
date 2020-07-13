package com.BookFinder.ctrl;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.BookFinder.domain.ReviewVO;
import com.BookFinder.persistence.ReviewDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class DummyInsert
{
	@Inject
	private ReviewDAO rvdao;

	@Test
	public void dummyTest() throws Exception
	{
		for (int i = 0; i < 234; i++)
		{
			ReviewVO rvvo = new ReviewVO();
			rvvo.setRvtitle(i + "번째 상품명");
			rvvo.setRvwriter("더미 작성자" + i);
			rvvo.setRvcontent("더미 상세 내용" + i);
			rvdao.insert(rvvo);
		}
	}

}