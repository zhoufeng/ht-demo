package com.xiaomaoguai.gecco.crawler.taoguba;

import java.util.List;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.annotation.Gecco;
import com.geccocrawler.gecco.annotation.HtmlField;
import com.geccocrawler.gecco.annotation.Request;
import com.geccocrawler.gecco.annotation.Text;
import com.geccocrawler.gecco.request.HttpGetRequest;
import com.geccocrawler.gecco.request.HttpRequest;
import com.geccocrawler.gecco.spider.HtmlBean;

/**
 * 微博列表页面
 * @author zhoufeng
 * @ClassName HomPage
 * @Version 1.0.0
 */
@Gecco(matchUrl="http://www.taoguba.com.cn/moreTopic?userID={author}", pipelines={"taogubaPipeline"},timeout=5000)
public class BlogList implements HtmlBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Text
	@HtmlField(cssPath="#topbar .left b")
	private String author;
	
	@Request
	private HttpRequest request;
	
	
	@HtmlField(cssPath="form[name=main] tr[class]")
	private List<TaogubaArticle> articleList;

	public HttpRequest getRequest() {
		return request;
	}

	public void setRequest(HttpRequest request) {
		this.request = request;
	}

	
	public List<TaogubaArticle> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<TaogubaArticle> articleList) {
		this.articleList = articleList;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public static void main(String[] args) {
			HttpGetRequest start = new HttpGetRequest("http://weibo.com/kylinclub");
			//HttpGetRequest start = new HttpGetRequest("http://weibo.com/hecmcn");
			start.addHeader("User-Agent", "spider");
	        start.setCharset("GBK");
	        GeccoEngine.create()
	                .classpath("com.xiaomaoguai.gecco.crawler.weibo")
	                .start(start)
	                .interval(1000)
	                .loop(false)
	                .run();
	}
}
