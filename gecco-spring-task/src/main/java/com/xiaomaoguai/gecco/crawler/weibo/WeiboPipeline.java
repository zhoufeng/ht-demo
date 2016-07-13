package com.xiaomaoguai.gecco.crawler.weibo;

import java.util.logging.Logger;

import org.apache.commons.lang3.time.DateUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.geccocrawler.gecco.GeccoEngine;
import com.geccocrawler.gecco.annotation.PipelineName;
import com.geccocrawler.gecco.pipeline.Pipeline;
import com.geccocrawler.gecco.spider.Spider;
import com.geccocrawler.gecco.spider.SpiderThreadLocal;
import com.xiaomaoguai.gecco.entity.WeiboArticle;
import com.xiaomaoguai.gecco.mapper.WeiboArticleMapper;

@PipelineName("weiboPipeline")
@Service
public class WeiboPipeline implements Pipeline<HomPage> {
	private static Log log = LogFactory.getLog(GeccoEngine.class);
	@Autowired
	private WeiboArticleMapper weiboMapper;

	@Override
	public void process(HomPage bean) {
		for (ArticleTo article : bean.getArticleList()) {
			System.out.println(article.getCreateTime() + ":" + article.getContent());
		}
		
		
		for (ArticleTo articleTo : bean.getArticleList()) {
			if (weiboMapper.selectByArticleId(articleTo.getArticleId()) != null) {
				break;
			} else {
				try {
					WeiboArticle article = new WeiboArticle();
					article.setArticleId(articleTo.getArticleId());
					article.setContent(articleTo.getContent());
					article.setCreateTm(DateUtils.parseDate(articleTo.getCreateTime(), "yyyy-MM-dd HH:mm:ss","yyyy-MM-dd HH:mm"));
					article.setClick(Boolean.FALSE);
					weiboMapper.insert(article);
				} catch (Exception e) {
					log.error("微博保存数据库出错:[createTm=" + articleTo.getCreateTime() + "]", e);
				}
			}
		}
	}

}
