package com.hanbit.team01.core.vo;

public class ArticleVO {

	private String articleId;
	private String title;
	private String contents;
	private String createDt;
	private String updateDt;

	public String getAticleId() {
		return articleId;
	}
	public void setAticleId(String aticleId) {
		this.articleId = aticleId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getCreateDt() {
		return createDt;
	}
	public void setCreateDt(String createDt) {
		this.createDt = createDt;
	}
	public String getUpdateDt() {
		return updateDt;
	}
	public void setUpdateDt(String updateDt) {
		this.updateDt = updateDt;
	}

}
