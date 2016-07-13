package com.xiaomaoguai.gecco.crawler.weibo;

import java.util.List;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.annotation.Gecco;
import com.geccocrawler.gecco.annotation.HtmlField;
import com.geccocrawler.gecco.annotation.Request;
import com.geccocrawler.gecco.annotation.RequestParameter;
import com.geccocrawler.gecco.request.HttpGetRequest;
import com.geccocrawler.gecco.request.HttpRequest;
import com.geccocrawler.gecco.spider.HtmlBean;
import com.xiaomaoguai.gecco.entity.WeiboArticle;

@Gecco(matchUrl="http://weibo.com/{author}", pipelines={"weiboPipeline"},timeout=5000)
public class HomPage implements HtmlBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@RequestParameter
	private String author;
	
	@Request
	private HttpRequest request;
	
	
	@HtmlField(cssPath=".WB_frame_c div[tbinfo]")
	private List<ArticleTo> articleList;

	public HttpRequest getRequest() {
		return request;
	}

	public void setRequest(HttpRequest request) {
		this.request = request;
	}

	
	public List<ArticleTo> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<ArticleTo> articleList) {
		this.articleList = articleList;
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
