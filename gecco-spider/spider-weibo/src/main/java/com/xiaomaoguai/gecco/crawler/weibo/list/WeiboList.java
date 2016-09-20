package com.xiaomaoguai.gecco.crawler.weibo.list;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.annotation.*;
import com.geccocrawler.gecco.request.HttpGetRequest;
import com.geccocrawler.gecco.request.HttpRequest;
import com.geccocrawler.gecco.spider.HtmlBean;

import java.util.List;

/**
 * 微博列表页面
 * @author zhoufeng
 * @ClassName HomPage
 * @Version 1.0.0
 */
@Gecco(matchUrl="http://weibo.com/{author}", pipelines={"weiboArticleListPipeline"},timeout=5000)
public class WeiboList implements HtmlBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Text
	@HtmlField(cssPath=".pf_username .username")
	private String author;
	
	@Request
	private HttpRequest request;
	
	@Attr("href")
	@HtmlField(cssPath=".WB_frame_c div[tbinfo] .WB_from.S_txt2 a[node-type=feed_list_item_date]")
	private List<String> articleList;

	public HttpRequest getRequest() {
		return request;
	}

	public void setRequest(HttpRequest request) {
		this.request = request;
	}

	
	public List<String> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<String> articleList) {
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
