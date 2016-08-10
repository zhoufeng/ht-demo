package com.xiaomaoguai.gecco.crawler.weibo;

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
public class WeiboArticle implements HtmlBean{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**	标题	**/
	@Attr("name")
	@HtmlField(cssPath=".WB_detail .WB_from.S_txt2 a")
	private String articleId;	
	
	/**	发布时间	**/
	@Attr("title")
	@HtmlField(cssPath=".WB_detail .WB_from.S_txt2 a")
	private String createTime;
	
	/**	发布内容	**/
	@Text
	@HtmlField(cssPath=".WB_detail [node-type=feed_list_content]")
	private String content;
	
	/**	文章链接地址 	**/
	@Attr("href")
	@HtmlField(cssPath=".WB_from.S_txt2 a[node-type=feed_list_item_date]")
	private String href;
	
	/**	 头像地址 	**/
	@Attr("src")
	@HtmlField(cssPath=".WB_face.W_fl img")
	private String chatHead;
	

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

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public String getChatHead() {
		return chatHead;
	}

	public void setChatHead(String chatHead) {
		this.chatHead = chatHead;
	}
	
	
	
}
