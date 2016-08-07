package com.xiaomaoguai.gecco.crawler.taoguba;

import com.geccocrawler.gecco.annotation.Attr;
import com.geccocrawler.gecco.annotation.HtmlField;
import com.geccocrawler.gecco.annotation.Text;
import com.geccocrawler.gecco.spider.HtmlBean;

/**
 * 微博列表每一个item的解析bean
 * @author zhoufeng
 * @ClassName WeiboArticle
 * @Version 1.0.0
 */
public class TaogubaArticle implements HtmlBean{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**	标题	**/
	@Text
	@HtmlField(cssPath="td")
	private String articleId;	
	
	/**	发布时间	**/
	@Text
	@HtmlField(cssPath="td.suh a")
	private String createTime;
	
	/**	发布内容	**/
	@Text
	@HtmlField(cssPath=".WB_detail [node-type=feed_list_content]")
	private String content;

	

	public String getArticleId() {
		return articleId;
	}

	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
