package com.xiaomaoguai.gecco.crawler.taoguba;

import java.util.List;

import com.geccocrawler.gecco.annotation.Attr;
import com.geccocrawler.gecco.annotation.Html;
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

	/**	链接地址	**/
	@Attr("href")
	@HtmlField(cssPath="td.suh a")
	private String href;	
	
	/**	发布时间	**/
	@Html
	@HtmlField(cssPath="td")
	private List<String> html;
	
	/**	发布内容	**/
	@Html
	@HtmlField(cssPath="td.suh")
	private String content;

	

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}





	public List<String> getHtml() {
		return html;
	}

	public void setHtml(List<String> html) {
		this.html = html;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
