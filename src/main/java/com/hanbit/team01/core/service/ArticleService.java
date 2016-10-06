package com.hanbit.team01.core.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanbit.team01.core.dao.ArticleDAO;
import com.hanbit.team01.core.vo.ArticleVO;

@Service
public class ArticleService {

	private static final Logger LOGGER = LoggerFactory.getLogger(ArticleService.class);

	@Autowired
	private ArticleDAO articleDAO;

	public int addArticle(ArticleVO article){

		return articleDAO.insertArticle(article);
	}

	public int modifyArticle(ArticleVO article){

		return articleDAO.updateArticle(article);
	}

	public int removeArticle(String articleId){

		return articleDAO.deleteArticle(articleId);
	}

	public List<ArticleVO> listArticles(String createDt){

		return articleDAO.selectArticles(createDt);
	}

	public ArticleVO getArticle(String articleId){
		return articleDAO.selectArticle(articleId);
	}



}
