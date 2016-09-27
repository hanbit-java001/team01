package com.hanbit.team01.core.dao;

import java.util.List;

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
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateArticle(ArticleVO article) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteArticle(String articleId) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<ArticleVO> selectArticles(String createDt) {
		// TODO Auto-generated method stub
		return null;
	}

	public ArticleVO selectArticle(String articleId) {
		// TODO Auto-generated method stub
		return null;
	}



}
