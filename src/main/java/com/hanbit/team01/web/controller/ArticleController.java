package com.hanbit.team01.web.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.hanbit.team01.core.service.ArticleService;
import com.hanbit.team01.core.service.FileService;
import com.hanbit.team01.core.vo.FileVO;

@Controller
public class ArticleController {

	private static final Logger LOGGER = LoggerFactory.getLogger(ArticleController.class);

	@Autowired
	private ArticleService articleService;

	@Autowired
	private FileService fileService;

	@RequestMapping("upload/uploadForm")
	public String UploadForm(){

		return "upload/uploadForm";
	}

	@RequestMapping("article/main")
	public String mainView(){
		return "article/main";
	}
	@RequestMapping("article/list")
	public String contentsList(){
		return "article/list";
	}

	@RequestMapping(value="/api/article/upload", method=RequestMethod.POST)
	@ResponseBody
	public Map doUpload(MultipartHttpServletRequest request) throws Exception {

		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String createDt = request.getParameter("createDt");
		String fileId = "";

		Iterator<String> paramNames = request.getFileNames();

		if (paramNames.hasNext()) {
			String paramName = paramNames.next();

			MultipartFile file = request.getFile(paramName);

			FileVO fileVO = new FileVO();
			fileVO.setContentType(file.getContentType());
			fileVO.setFileSize(file.getSize());
			fileVO.setFileName(file.getName());
			fileVO.setFileData(file.getBytes());

			fileId = fileService.storeFile(fileVO);

		}
		Map result = new HashMap();
		result.put("title", title);

		return result;
	}

}
