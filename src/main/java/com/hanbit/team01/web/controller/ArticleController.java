package com.hanbit.team01.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hanbit.team01.core.service.ArticleService;

@Controller
public class ArticleController {

	private static final Logger LOGGER = LoggerFactory.getLogger(ArticleController.class);

	@Autowired
	private ArticleService articleService;

	@RequestMapping("article/index")
	public String list(){

		return "article/index";
	}

	@RequestMapping("article/index2")
	public String list2(){

		return "article/index2";
	}




}
