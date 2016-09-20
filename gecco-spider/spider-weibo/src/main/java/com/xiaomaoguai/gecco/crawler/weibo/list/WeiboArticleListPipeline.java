/**
 * Project Name:spider-weibo
 * File Name:WeiboArticleListPipeline.java
 * Package Name:com.xiaomaoguai.gecco.crawler.weibo
 * Date:2016-9-14下午5:09:38
 * Copyright (c) 2016, chenzhou1025@126.com All Rights Reserved.
 *
*/

package com.xiaomaoguai.gecco.crawler.weibo.list;

import com.geccocrawler.gecco.annotation.PipelineName;
import com.geccocrawler.gecco.pipeline.Pipeline;
import com.geccocrawler.gecco.request.HttpRequest;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 微博爬虫处理类
 * @author zhoufeng
 * @ClassName
 * @Version 1.0.0
 */
@PipelineName("weiboArticleListPipeline")
@Service
public class WeiboArticleListPipeline implements Pipeline<WeiboList>{
	
	public static List<HttpRequest> sortRequests = new ArrayList<HttpRequest>();

	@Override
	public void process(WeiboList listbean) {
		
		for(String suffixUrl:listbean.getArticleList()){
			String url="http://weibo.com"+suffixUrl;
			sortRequests.add(listbean.getRequest().subRequest(url));
		}
		
	}

}

