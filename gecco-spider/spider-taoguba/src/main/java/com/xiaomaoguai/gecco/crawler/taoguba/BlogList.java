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
@Gecco(matchUrl="http://www.taoguba.com.cn/moreTopic?userID={userId}", pipelines={"taogubaPipeline"},timeout=5000)
public class BlogList implements HtmlBean {
	private static final String cookies="CNZZDATA1574657=cnzz_eid%3D1594779987-1469604292-%26ntime%3D1472001974; tgbuser=251331; tgbpwd=5426428033Fopl6gondcvshvsh; td_cookie=429057643; zhihu=1; bdshare_firstime=1470027696474; JSESSIONID=617D15D5B85594B60B33267D0";
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Text
	@HtmlField(cssPath="#topbar .left b")
	private String author;
	
	private Integer userId;
	
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

	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public static void main(String[] args) {
			HttpGetRequest start = new HttpGetRequest("http://weibo.com/kylinclub");
			//HttpGetRequest start = new HttpGetRequest("http://weibo.com/hecmcn");
	        start.setCharset("GBK");
	        GeccoEngine.create()
	                .classpath("com.xiaomaoguai.gecco.crawler.weibo")
	                .start(start)
	                .interval(1000)
	                .loop(false)
	                .run();
	}
}
