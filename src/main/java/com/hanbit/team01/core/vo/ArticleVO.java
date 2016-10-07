package com.hanbit.team01.core.vo;

public class ArticleVO {

	private int articleId;
	private String title;
	private String contents;
	private String createDt;
	private String updateDt;
	private String profileFileId;

	public int getArticleId() {
		return articleId;
	}
	public void setArticleId(int articleId) {
		this.articleId = articleId;
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
	public String getProfileFileId() {
		return profileFileId;
	}
	public void setProfileFileId(String profileFileId) {
		this.profileFileId = profileFileId;
	}



}
