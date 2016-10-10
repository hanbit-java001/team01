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



	public String addArticle(ArticleVO article){

		int articleId = articleDAO.selectNextAticleId();
		article.setArticleId(articleId);

		articleDAO.insertArticle(article);

		return article.getTitle();
	}


	public int removeArticle(String articleId){

		return articleDAO.deleteArticle(articleId);
	}



	public int modifyArticle(ArticleVO article){

		return articleDAO.updateArticle(article);
	}


	public List<ArticleVO> listArticles(String createYear){

		return articleDAO.selectArticles(createYear);

	}

	public ArticleVO getArticle(String articleId){
		return articleDAO.selectArticle(articleId);
	}



}
