package com.xiaomaoguai.gecco.entity;

import java.util.Date;

public class Article {
    private Long id;

    private String articleId;

    /** 文章内容 */
    private String content;

    /** 作者 */
    private String author;

    private Date createTm;

    /** 来源(1.微博 2.淘股吧 3.滚雪球) */
    private Integer sourceType;

    /** 文章链接 */
    private String href;
    
    /** 头像地址 */
    private String chatHead;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId == null ? null : articleId.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public Date getCreateTm() {
        return createTm;
    }

    public void setCreateTm(Date createTm) {
        this.createTm = createTm;
    }

    public Integer getSourceType() {
        return sourceType;
    }

    public void setSourceType(Integer sourceType) {
        this.sourceType = sourceType;
    }

    public String getHref() {
        return href;
    }

    public void setHref(String href) {
        this.href = href == null ? null : href.trim();
    }

	public String getChatHead() {
		return chatHead;
	}

	public void setChatHead(String chatHead) {
		this.chatHead = chatHead;
	}
    
    
}