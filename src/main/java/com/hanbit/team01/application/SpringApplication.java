package com.hanbit.team01.application;

import com.hanbit.team01.core.service.ArticleService;
import com.hanbit.team01.core.vo.ArticleVO;

public class SpringApplication {

	public static void main(String[] args) {
		ArticleService articleService = new ArticleService();

		ArticleVO article = new ArticleVO();
		article.setAticleId(String.valueOf(System.currentTimeMillis()));
		article.setTitle("저녁");
		article.setContents("반찬 뭘까");
		article.setCreateDt("201609131830");

		int result = articleService.addArticle(article);

		System.out.println("결과: " + result);
	}

}
