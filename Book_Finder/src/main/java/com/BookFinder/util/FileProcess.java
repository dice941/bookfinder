package com.BookFinder.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.BookFinder.domain.BookVO;
import com.BookFinder.domain.NoticeVO;
import com.BookFinder.domain.ReviewVO;

@Component
public class FileProcess
{
	private static final Logger log = LoggerFactory.getLogger(FileProcess.class);

	@Resource(name = "upImages")
	String upImages;

	public BookVO bv_fs(MultipartHttpServletRequest req) throws IllegalStateException, IOException
	{
		log.info(">>> 파일 저장 등록 - Multi");
		String btitle = req.getParameter("btitle");
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String publisher = req.getParameter("publisher");
		int price = Integer.parseInt(req.getParameter("price"));
		MultipartFile bimgfile = req.getFile("bimgfile");

		BookVO bvo = new BookVO(btitle, writer, content, publisher, price);
		if (bimgfile.isEmpty())
		{
			bvo.setBimgfile("NONE");
		} else
		{
			String orgFileName = bimgfile.getOriginalFilename(); // 첨부한 파일에서 파일이름 추출
			String saveFileName = UUID.randomUUID().toString() + "_" + orgFileName; // 중복되지 않은 파일이름 생성
			File file = new File(upImages + saveFileName); // 파일객체 생성
			bimgfile.transferTo(file); // 파일 객체 복사
			bvo.setBimgfile(saveFileName); // vo객체에 파일명 저장
		}
		return bvo;
	}

	public BookVO bv_fm(MultipartHttpServletRequest req) throws IllegalStateException, IOException
	{
		log.info(">>> 파일 수정 - Multi");
		int bno = Integer.parseInt(req.getParameter("bno"));
		String btitle = req.getParameter("btitle");
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String publisher = req.getParameter("publisher");
		int price = Integer.parseInt(req.getParameter("price"));

		String bimgfile = req.getParameter("bimgfile");
		MultipartFile new_imgfile = req.getFile("new_imgfile");

		BookVO bvo = new BookVO(bno, btitle, writer, content, publisher, price);
		if (new_imgfile.isEmpty())
		{
			bvo.setBimgfile(bimgfile);
		} else
		{
			String orgFileName = new_imgfile.getOriginalFilename(); // 첨부한 파일에서 파일이름 추출
			String saveFileName = UUID.randomUUID().toString() + "_" + orgFileName; // 중복되지 않은 파일이름 생성
			File file = new File(upImages + saveFileName); // 파일객체 생성
			new_imgfile.transferTo(file); // 파일 객체 복사
			bvo.setBimgfile(saveFileName); // vo객체에 파일명 저장
			fileRemove(bimgfile);
		}
		return bvo;
	}

	public NoticeVO nv_fs(MultipartHttpServletRequest req) throws IllegalStateException, IOException
	{
		log.info(">>> 파일 저장 등록 - Multi");
		String title = req.getParameter("title");
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		MultipartFile imgfile = req.getFile("imgfile");

		NoticeVO nvo = new NoticeVO(title, writer, content);
		if (imgfile.isEmpty())
		{
			nvo.setImgfile("NONE");
		} else
		{
			String orgFileName = imgfile.getOriginalFilename(); // 첨부한 파일에서 파일이름 추출
			String saveFileName = UUID.randomUUID().toString() + "_" + orgFileName; // 중복되지 않은 파일이름 생성
			File file = new File(upImages + saveFileName); // 파일객체 생성
			imgfile.transferTo(file); // 파일 객체 복사
			nvo.setImgfile(saveFileName); // vo객체에 파일명 저장
		}
		return nvo;
	}

	public NoticeVO nv_fm(MultipartHttpServletRequest req) throws IllegalStateException, IOException
	{
		log.info(">>> 파일 수정 - Multi");
		int nno = Integer.parseInt(req.getParameter("nno"));
		String title = req.getParameter("title");
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		String imgfile = req.getParameter("imgfile");
		MultipartFile new_imgfile = req.getFile("new_imgfile");

		NoticeVO nvo = new NoticeVO(nno, title, writer, content);
		if (new_imgfile.isEmpty())
		{
			nvo.setImgfile(imgfile);
		} else
		{
			String orgFileName = new_imgfile.getOriginalFilename(); // 첨부한 파일에서 파일이름 추출
			String saveFileName = UUID.randomUUID().toString() + "_" + orgFileName; // 중복되지 않은 파일이름 생성
			File file = new File(upImages + saveFileName); // 파일객체 생성
			new_imgfile.transferTo(file); // 파일 객체 복사
			nvo.setImgfile(saveFileName); // vo객체에 파일명 저장
			fileRemove(imgfile);
		}
		return nvo;
	}

	public void fileRemove(String imgfile)
	{
		log.info(">>> 파일 삭제 - Multi");
		new File(upImages + imgfile).delete();
	}
}
