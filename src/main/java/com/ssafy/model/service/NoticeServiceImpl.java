package com.ssafy.model.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ssafy.model.dao.NoticeDao;
import com.ssafy.model.dto.Notice;
import com.ssafy.model.dto.NoticeFile;
import com.ssafy.model.dto.PageBean;
import com.ssafy.model.dto.SafeFoodException;
import com.ssafy.util.PageUtility;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDao dao;

	@Override
	public void insert(Notice notice) {
		File[] realFile = null;
		int size = 0;
		try {
			int no = dao.getNoticeNo();
			notice.setNo(no);
			dao.insert(notice);
			MultipartFile[] fileups = notice.getFileup();
			size = fileups.length;
			if(fileups != null && size > 0) {
				List<NoticeFile> files = new ArrayList<NoticeFile>(size);
				realFile = new File[size];
				int idx = 0;
				for (MultipartFile file : fileups) {
					String rfileName = file.getOriginalFilename();
					String sfileName = String.format("%d%s"
													, System.currentTimeMillis()
													, rfileName);
					String savePath = String.format("%s/resources/upload/%s", notice.getDir(), sfileName);
					files.add(new NoticeFile(rfileName, sfileName));
					realFile[idx] = new File(savePath);
					file.transferTo(realFile[idx++]);
				}
				dao.insertFile(files, no);
			}
		}catch(Exception e) {
			if(realFile != null && size>0) {
				for (File file : realFile) {
					if(file.exists()) {
						file.delete();
					}
				}
			}
		}

	}

	@Override
	public void update(Notice notice) {
		dao.update(notice);
		List<NoticeFile> files = notice.getFiles();
		if(files != null) {
			dao.deleteFile(notice.getNo());
			dao.insertFile(files, notice.getNo());
		}
	}
	
	@Override
	public void delete(int no) {
		try {
			Notice deleteNotice = dao.search(no);
			boolean canRemove = false;
			if(deleteNotice.getFiles().size() > 0) {
				canRemove = true;
			}
			if(deleteNotice!=null) dao.delete(no);
			if(canRemove)dao.deleteFile(no);
		}catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}
	@Override
	public Notice search(int no) {
		return dao.search(no);
	}

	@Override
	public List<Notice> searchAll(PageBean bean) {
		try {
			int total = dao.count(bean);
			PageUtility bar = new PageUtility(bean.getInterval(), total, bean.getPageNo(), "images/");
			bean.setPageLink(bar.getPageBar());
			return dao.searchAll(bean);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			throw new SafeFoodException("공지사항 게시물 검색 중 오류 발생");
		}
	}

}
