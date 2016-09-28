package com.hanbit.team01.core.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hanbit.team01.core.vo.ArticleVO;

@Repository
public class ArticleDAO {

	private static final Logger LOGGER = LoggerFactory.getLogger(ArticleDAO.class);

	@Autowired
	private SqlSession sqlSession;

	public int insertArticle(ArticleVO article) {
		int result = sqlSession.insert("article.insertArticle", article);

		return result;
	}

	public int updateArticle(ArticleVO article) {
		int result = sqlSession.update("article.updateArticle", article);

		return result;
	}

	public int deleteArticle(String articleId) {
		int result = sqlSession.delete("article.deleteArticle", articleId);

		return result;
	}

	public List<ArticleVO> selectArticles(String createDt, String todayDt) {
		Map params = new HashMap();
		params.put("createDt", createDt);
		params.put("todayDt", todayDt);

		List<ArticleVO> result = sqlSession.selectList("article.selectArticles",params);

		return result;
	}

	public ArticleVO selectArticle(String articleId) {
		ArticleVO article = sqlSession.selectOne("article.selectArticle",articleId);

		return article;
	}



}
